//
//  PlanTripView.swift
//  ExploreHere
//
//  Created by William Souef on 15/09/2022.
//

import SwiftUI

struct PlanTripView: View {


@StateObject var tripType = TripType()

    
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
                    ForEach(activities, id: \.id) { activity in
                   
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
