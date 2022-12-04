//
//  ContentView2.swift
//  ExploreHere
//
//  Created by William Souef on 04/12/2022.
//

import SwiftUI

struct ContentView2: View {
    @AppStorage ("selectedBar") var selectedBar : Tab = .cart    
    @State private var ListScreenIsShowing = false
    @EnvironmentObject var tripType : TripType
    var body: some View {
      
        VStack(alignment: .leading){
            
            switch selectedBar {
        case .home:
            Homescreen()
        case .hotel:
            ListScreen(ListScreenisShowing: $ListScreenIsShowing)
        case .activities:
            PlanTripView()
                .environmentObject(tripType)
        case .cart:
            CartView()
        }
       
       
        TabsView()
            
        }
}
}
struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
            .environmentObject(TripType())
            .frame( height: 150)
    }
}
