//
//  ContentView2.swift
//  ExploreHere
//
//  Created by William Souef on 04/12/2022.
//
//
import SwiftUI
//
struct ContentView2: View {

//    @AppStorage ("selectedBar") var selectedBar : Tab = .activities
//    @State private var ListScreenIsShowing = false
//    @EnvironmentObject var tripType : TripType
    @State private var searchText = ""
//
    var body: some View {
//
        VStack(){
            
           
             
            NavigationView {
                List {
                    ForEach(filteredMessages, id: \.id) { activity in
                             
                        Text(activity.name)
                                
                                
                    }
                }
                .navigationTitle("Activity")
            }
            .searchable(text: $searchText)
                
            
            //
            //    switch selectedBar {
            //        case .home:
            //            Homescreen()
        }
//        case .hotel:
//            ListScreen(ListScreenisShowing: $ListScreenIsShowing)
//        case .activities:
//            PlanTripView()
//                .environmentObject(tripType)
//        case .cart:
//            CartView()
       }
//
    var filteredMessages: [Activities] {
    if searchText.isEmpty {
        return activities
    } else {
        return activities.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
    }
}
//
          }
//
//}
//}
    struct ContentView2_Previews: PreviewProvider {
        static var previews: some View {
            ContentView2()
            //            .environmentObject(TripType())
            //            .frame( height: 150)
            //    }
        }
    }
