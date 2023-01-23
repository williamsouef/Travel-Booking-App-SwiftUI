//
//  PlanTripView.swift
//  ExploreHere
//
//  Created by William Souef on 15/09/2022.
//

import SwiftUI

struct PlanTripView: View {


@StateObject var tripType = TripType()
@State private var searchText = ""
    
    var filteredMessages: [Activities] {
    if searchText.isEmpty {
        return activities
    } else {
        return activities.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
    }
}
    
    var body: some View {
        
        
        NavigationView{
          
            ZStack{
                
    // ADD A BACKGROUND
            VStack(alignment: .center){
                LazyVGrid(
                  columns: [
                    GridItem(.flexible(minimum: 100, maximum: 260)),
                    GridItem(.flexible(minimum: 100, maximum: 260))
                  ], spacing: 30
                )
                {
                    ForEach(filteredMessages, id: \.id) { activity in
                   
                    NavigationLink(destination: DetailExperienceView(activity: activity)){
                    ExperiencesButton(name: activity.name, image: activity.image)
                        .padding(35)
                
                    }
                }
                }
                .navigationBarTitle(" Trips")

            }
            
        }.accentColor(.black)
        
        
       
        }
        .searchable(text:$searchText , prompt: "type something here...")
        
        }
}


struct PlanTripView_Previews: PreviewProvider {
    private static var PlanTripViewIsShowing = Binding.constant(false)
    static var previews: some View {
        
        PlanTripView()
            .environmentObject(TripType())
            .previewInterfaceOrientation(.portrait)
    }
}
