//
//  DetailViews.swift
//  ExploreHere
//
//  Created by William Souef on 03/11/2023.
//

import SwiftUI
import MapKit

struct DetailViews: View {

    var text : String
    var image: String

    var body: some View {

            VStack(alignment: .center, spacing:10){

                HStack(alignment: .top){
                    Image(image)
                        .resizable()
                        .frame(width: 400,height: 250)
                        .cornerRadius(15)
                }
                Text(text)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)

                Text(text)
                    .font(.headline)
                    .foregroundStyle(.secondary)
                    .tracking(-1)
                    .multilineTextAlignment(.leading)
                    .padding()
            }
            .ignoresSafeArea()
            .padding()
            .edgesIgnoringSafeArea(.top)
        }
    }


#Preview {
    DetailViews(text: "Hello", image: "surf" )
}
