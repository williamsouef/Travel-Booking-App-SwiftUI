//
//  ContentView.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var PlanTripViewIsShowing = false
    @State private var ListScreenIsShowing = false
    var body: some View {
        VStack{
          
            TabView{
                Homescreen()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                            .fontWeight(.black)
                    }
                ListScreen(ListScreenisShowing: $ListScreenIsShowing)
                    .tabItem{
                        Image(systemName: "bed.double")
                            .resizable()
                        Text("Hotel")
                    }
                    .badge(hotelList.count)
                PlanTripView(PlanTripViewIsShowing: $PlanTripViewIsShowing)
                    .tabItem {
                        Image(systemName:"figure.walk")
                            .resizable()
                        Text ("Activities")
                    }
                    .badge(activities.count)
                  
            }  .accentColor(.black)
    
            
            
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
