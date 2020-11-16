//
//  DrinkItem.swift
//  iCoffe
//
//  Created by Richard Leandro on 16/11/20.
//

import SwiftUI

struct DrinkItem: View {
    
    var drink: Drink
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16){
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 5){
                Text(drink.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                
                Text(drink.description)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
                
            }
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
