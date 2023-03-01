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
        VStack(alignment: .leading){
        Text("Cart")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
        ScrollView{
            
            if tripType.activities.count > 0 {
                ForEach(tripType.activities, id: \.id) {
                    activities in
                    ItemRows(activity: activities)}
            } else {
        Text("Your cart is empty!")
                    .padding()
                
            }
                
            Text("Total price is")
            Spacer()
            Text("$\(tripType.total)")
            PaymentButtonView(action: {})
                .padding()
    }
}
    }

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(TripType())
    }
}
}

