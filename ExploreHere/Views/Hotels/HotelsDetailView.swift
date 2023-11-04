//
//  DetailView.swift
//  ExploreHere
//
//  Created by William Souef on 10/09/2022.
//

import SwiftUI


struct HotelsDetailView: View {
    //TODO: Redesign the detail view
    var hotel : Hotels
    @EnvironmentObject var hotelsList : HotelType
    
    init(hotel: Hotels) {
        self.hotel = hotel
    }
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
                    hotelsList.addHotels(newItem: hotel)
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
        HotelsDetailView(hotel: hotelList[0])
    }
}
