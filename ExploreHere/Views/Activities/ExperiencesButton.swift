//
//  ExperiencesButton.swift
//  ExploreHere
//
//  Created by William Souef on 17/09/2022.
//

import SwiftUI

struct ExperiencesButton: View {
    
    var name : String
    var image : String
    
    var body: some View {
        
        ZStack(alignment: .bottom){
        Image(image)
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .blur(radius: 0.5)
                .shadow(color: .gray, radius: 20, x: 0, y: 10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("AccentColor"), lineWidth: Constants.General.lineWidth))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 140, height: 30)
                .overlay(
            Text(name)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.white))
                
        }
    }
}

struct ExperiencesButton_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesButton(name: "Rambo", image: "surf")
    }
}
