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
        
        ZStack{
        Image(image)
                .frame(width: 200, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .blur(radius: 0.5)
                .shadow(color: .gray, radius: 20, x: 0, y: 10)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color("ButtonCloseBackgroundColor"), lineWidth: Constants.General.lineWidth))
            
                
            
            Text(name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
                
        }
    }
}

struct ExperiencesButton_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesButton(name: "Rambo", image: "surf")
    }
}
