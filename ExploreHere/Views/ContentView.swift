//
//  ContentView.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var tripType : TripType
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
                    .tag(0)
                PlanTripView()
                    .environmentObject(tripType)
                  
                    .tabItem {
                        Image(systemName:"figure.walk")
                            .resizable()
                        Text ("Activities")
                    }
                    
                    .tag(1)
                     CartView()
                    .environmentObject(tripType)
                    .tabItem{
                        CartButton(numberOfItems: tripType.activities.count)
                        Text ("Cart")
                            
                    }
                                  
                  
            }
            
        
            .accentColor(.black)
        
           
              
        
        }
       //  .toolbar{
        //     NavigationLink{
        //        CartView()
        //            .environmentObject(tripType)
        //    }label: {
        //         CartButton(numberOfItems: tripType.activities.count)
        //            .environmentObject(tripType)
           // }
            
                 
       //  }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .environmentObject(TripType())
            
    }
}
