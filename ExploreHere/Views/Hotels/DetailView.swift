//
//  DetailView.swift
//  ExploreHere
//
//  Created by William Souef on 10/09/2022.
//

import SwiftUI


struct DetailView: View {
    
    var hotel : Hotels = hotelList[0]
    
    var body: some View {
        VStack(alignment: .center, spacing: 10){
      
            Image(hotel.image)
                .resizable()
                .frame(width: 350,height: 350)
                .clipShape(RoundedRectangle(cornerRadius: 20))
               
        
            Text(hotel.name)
                .font(.title)
                .fontWeight(.semibold)
            
            Text(hotel.description)
                .tracking(-1)
                .multilineTextAlignment(.leading)
            
            Button(action: {
                withAnimation{
                print("Added to the hotel booking list")
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

            
            
        }.padding()
            
        }
        
    }


struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailView(hotel: hotelList[0])
    }
}
