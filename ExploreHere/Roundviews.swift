//
//  Roundviews.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI

struct RoundViews: View {
    var systemName : String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtoninfoTextColor"))
            .frame(width: 100.0, height: 56.0)
            .background(
                Circle()
                .fill(Color("ButtoninfoBackgroundColor"))
                .transition(.scale)
                
            )
       
    }
}
struct RoundCloseViews: View {
    var systemName : String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonCloseTextColor"))
            .frame(width: 100.0, height: 56.0)
            .background(
                Circle()
                .fill(Color("ButtonCloseBackgroundColor"))
                .transition(.scale)
                
            )
       
    }
}


struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        RoundViews(systemName: "info")
       
        RoundCloseViews(systemName: "xmark")
        }
        VStack{
        RoundViews(systemName: "info")
            .preferredColorScheme(.dark)
        RoundCloseViews(systemName: "xmark")
        }
        
    }
}
