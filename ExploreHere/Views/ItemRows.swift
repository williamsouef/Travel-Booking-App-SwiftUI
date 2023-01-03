//
//  ItemRows.swift
//  ExploreHere
//
//  Created by William Souef on 25/09/2022.
//

import SwiftUI

struct ItemRows: View {
    @EnvironmentObject var tripType : TripType
    var activity : Activities
    var body: some View {
        HStack(spacing:20) {
            Image(activity.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 10){
                Text(activity.name)
                    .bold()
                Text("\(activity.price)$")
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    tripType.removeFromCart(newItem: activity)
                }
                .padding()
        }
        .padding(.horizontal)
        .frame(maxWidth:.infinity,alignment: .leading)
    }
}

struct ItemRows_Previews: PreviewProvider {
    static var previews: some View {
        ItemRows(activity: activities[2])
        
    }
}
