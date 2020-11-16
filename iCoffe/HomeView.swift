//
//  ContentView.swift
//  iCoffe
//
//  Created by Richard Leandro on 15/11/20.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var drinkListener = DrinkListener()
    
    // MARK: CATEGORIES
    var categories: [String : [Drink]]{
        .init(
            grouping: drinkListener.drinks, by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        
        NavigationView{
            
            List(categories.keys.sorted(), id: \String.self){
                key in
                DrinkRow(categoryName: "\(key)Drink".uppercased(),
                         drinks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
            
                .navigationBarTitle(Text("isCoffee"))
                .navigationBarItems(leading:
                                        
                                        Button(action:{
                                            print("log out")
                                            createMenu()
                                        }, label: {
                                            Text("Log out")
                                        })
                                    , trailing:
                                        
                                        Button(action:{
                                            print("log out")
                                        }, label: {
                                            Image("Log out")
                                        })
                                    
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
