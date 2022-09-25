//
//  ListViews.swift
//  ExploreHere
//
//  Created by William Souef on 10/09/2022.
//

import Foundation
import SwiftUI

struct ListScreen : View {
    
 @Binding var ListScreenisShowing : Bool
 @StateObject var type = HotelType()

    
    var body : some View {
        
        NavigationView{
          
            
            List{
            ForEach(hotelList, id: \.id) { Hotels in
           NavigationLink(destination: DetailView(hotel: Hotels)) {
               HStack{
                  VStack(alignment: .leading){
           
                      Text("\(Hotels.name)")
                         .font(.title)
                        .fontWeight(.semibold)

                    
                      
            }
                  Spacer()
                  Image("\(Hotels.image)")
                      .resizable()
                      .frame(width: 100, height: 100)
                      .clipShape(RoundedRectangle(cornerRadius: 20))
                      
               }
           }
        }
            }
        .navigationBarTitle("Hotels")
        .environmentObject(type)
        
        }
        
    }
    
}




struct ListScreen_Previews: PreviewProvider {
    
    private static var ListScreenisShowing = Binding.constant(false)
    static var previews: some View {
       
        ListScreen(ListScreenisShowing: ListScreenisShowing)
    }
}

