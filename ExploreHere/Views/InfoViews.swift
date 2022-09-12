//
//  InfoViews.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI

struct InfoView: View {

    
    let text : String
    let systemName : String
    
    var body: some View {
            
        RoundedRectangle(cornerRadius: Constants.General.roundedRectangleCornerRadius)
            .fill(Color("RoundedBackgroundColor-1"))
            .frame(width: Constants.General.roundedRectangleWidth, height: Constants.General.roundedRectangleHeight)
        
            .font(.title)
            .overlay(HStack{
                Image(systemName: systemName)
                    .foregroundColor(Color("FilledBackgroundColor"))
                Text(text)
                    .foregroundColor(Color("FilledBackgroundColor")
                    )
                    
            })
        
    }
}




struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hi", systemName: "list.bullet.indent")
        InfoView(text: "Hi", systemName: "list.bullet.indent")
            
            .previewInterfaceOrientation(.landscapeRight)
        
    }
}
