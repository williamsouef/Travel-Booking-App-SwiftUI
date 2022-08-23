//
//  UserViews.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI

struct UserView: View {
    var username: String
    var body: some View {
        
        Text(username)
            .font(.title2)
            .kerning(2.0)
            .multilineTextAlignment(.center)
            
        
    }
}

struct TitleHome: View {
    var title : String
    var body: some View {
        Text(title)
            .bold()
            .fontWeight(.black)
            .font(.title)
            .multilineTextAlignment(.center)
    }
    
}
struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
     
        TitleHome(title: "WELCOME,")
        UserView(username: "William!")
        }
    }
}

