//
//  CartButton.swift
//  ExploreHere
//
//  Created by William Souef on 25/09/2022.
//

import SwiftUI

struct CartButton: View {
    
    var numberOfItems : Int 
    
    var body: some View {
        ZStack(alignment: .topTrailing){
        Image(systemName: "cart")
                .padding(.top,8)
            if numberOfItems > 0 {
            Text("\(numberOfItems)")
                .font(.caption2).bold()
                .foregroundColor(.white)
                .frame(width: 15, height: 15)
                .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .cornerRadius(50)
        } else {
            Image(systemName: "cart")
                    .padding(.top,8)
        }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfItems: 1)
    }
}
