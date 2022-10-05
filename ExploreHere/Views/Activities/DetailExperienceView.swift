//
//  DetailExperienceView.swift
//  ExploreHere
//
//  Created by William Souef on 17/09/2022.
//

import SwiftUI

struct DetailExperienceView: View {
   
    var activity : Activities
   
    @EnvironmentObject var tripType : TripType
    
    
    var body: some View {
    
            VStack(alignment: .leading, spacing:10){
                
                HStack(alignment: .top){
            Image(activity.image)
                .resizable()
                
                .frame(maxWidth: 500, maxHeight: 300)
                
                }
                
                    Text(activity.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                
                
                Text(activity.description)
                    .tracking(-1)
                    .multilineTextAlignment(.leading)
                    
                .padding()
           
                HStack(alignment: .top){
                    Spacer()
                Button(action: {
                    
                    tripType.addActivities(newItem: activity)
                        
                })
           {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .frame(width: 120, height: 60)
                
                    .font(.title)
                    .overlay(HStack{
                      
                        Text("Register")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white
                            )
                            
                    }).padding()
               
           }
                    Spacer()
            }
                
            }
    
            .ignoresSafeArea()
         
            
                
        }
        
        
            
    }


struct DetailExperienceView_Previews: PreviewProvider {
    static let tripTide = TripType()
    @Namespace static var namespace
    static var previews: some View {
        DetailExperienceView(activity: activities[0])
            .environmentObject(tripTide)
    }
}
