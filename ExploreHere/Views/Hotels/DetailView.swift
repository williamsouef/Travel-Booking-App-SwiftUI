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
        VStack{
      
            Image(hotel.image)
                .resizable()
                .frame(width: 370, height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        
            Text(hotel.name)
                .font(.title)
                .fontWeight(.semibold)
            
            Text(hotel.description)
            
            
            
            
            }
            
        }
        
    }


struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailView(hotel: hotelList[0])
    }
}
