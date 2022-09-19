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
        
        HStack(alignment: .top, spacing:
            5){
            VStack(alignment: .center, spacing:20){
            Image(activity.image)
                .resizable()
                .padding()
                .frame(width: 150, height: 150)
                
            
            Button(action: {
                withAnimation{
                print("Added to the booking list")
                }
            }){
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .frame(width: 120, height: 60)
                
                    .font(.title)
                    .overlay(HStack{
                      
                        Text("Register")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white
                            )
                            
                    })
            }
            }
            
               
            VStack(alignment: .center,spacing: 10){
                Text(activity.name)
                .font(.title)
                .fontWeight(.semibold)
                
            
            
            Text(activity.description)
                .tracking(-1)
                .multilineTextAlignment(.leading)
                
            }.padding()
            
        }
         
           
                
        }
        
        
            
    }


struct DetailExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        DetailExperienceView(activity: activities[0])
    }
}