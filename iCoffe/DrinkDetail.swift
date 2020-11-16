//
//  DrinkDetail.swift
//  iCoffe
//
//  Created by Richard Leandro on 16/11/20.
//

import SwiftUI

struct DrinkDetail: View {
    
    var drink: Drink
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
            ZStack(alignment: .bottom){
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height:80)
                    .foregroundColor(.black)
                    .opacity(0.83)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8) {
                        Text(drink.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    
                    Spacer()
                    
                }
            }
            .listRowInsets(EdgeInsets())
        
            Text(drink.description)
                .foregroundColor(.primary)
                .font(.body)
                .lineLimit(5)
                .padding()
            
            HStack{
                Spacer()
                //MARK:: Button
                OrderButton(drink: self.drink)
                Spacer()
            }
            .padding(.top, 50)
        
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData.first!)
    }
}

struct OrderButton : View {

    var drink: Drink
    
    var body: some View{
        
        Button(action: {
            print("add to basket\(self.drink.name)")
        }){
            Text("add to basket")
        }
        .frame(width: 200, height: 50)
        .foregroundColor(.white)
        .font(.headline)
        .background(Color.blue)
        .cornerRadius(10)
    }
}
