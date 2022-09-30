//
//  CartView.swift
//  ExploreHere
//
//  Created by William Souef on 25/09/2022.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var tripType : TripType
    
    var body: some View {
        ScrollView{
            
            if tripType.activities.count > 0 {
                ForEach(tripType.activities, id: \.id) {
                    activities in
                    ItemRows(activity: activities)}
            } else {
        Text("Your cart is empty!")
            }
    }.navigationTitle(Text("My Cart"))
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(TripType())
    }
}
}

