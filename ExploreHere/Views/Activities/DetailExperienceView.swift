//
//  DetailExperienceView.swift
//  ExploreHere
//
//  Created by William Souef on 17/09/2022.
//

import SwiftUI

struct DetailExperienceView: View {
    
    var activity : Activities = activities[0]
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
      
            Image(activity.image)
                .resizable()
                .frame(width: 370, height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
        
            Text(activity.name)
                .font(.title)
                .fontWeight(.semibold)
            
            Text(activity.description)
                .tracking(-1)
                .multilineTextAlignment(.center)
           // MARK. ADDING BUTTON TO BOOK THE TRIP
            Button(action: {
                withAnimation{
                print("Added to the booking list")
                }
            }){
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .frame(width: 200, height: 70)
                
                    .font(.title)
                    .overlay(HStack{
                      
                        Text("Register")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white
                            )
                            
                    })
            }
        
        
            
            }
    }
}

struct DetailExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        DetailExperienceView(activity: activities[0])
    }
}
