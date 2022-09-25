//
//  ContentView.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var tripType : TripType
    @State private var PlanTripViewIsShowing = false
    @State private var ListScreenIsShowing = false
    @State private var selection = 1
    
    var body: some View {
        VStack{
          
            TabView(selection:$selection){
                
                Homescreen()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                            .fontWeight(.black)
                    }
                    .tag(3)
                ListScreen(ListScreenisShowing: $ListScreenIsShowing)
                    .tabItem{
                        Image(systemName: "bed.double")
                            .resizable()
                        Text("Hotel")
                    }
                    .badge(hotelList.count)
                    .tag(0)
                PlanTripView( PlanTripViewIsShowing: $PlanTripViewIsShowing)
                  
                    .tabItem {
                        Image(systemName:"figure.walk")
                            .resizable()
                        Text ("Activities")
                    }
                    .badge(activities.count)
                    .tag(1)
              
                  
            }  .accentColor(.black)
    
           
              
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            
    }
}
