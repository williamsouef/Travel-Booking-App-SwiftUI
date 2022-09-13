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
 @State var hotelList : [Hotels] = [hotel1,hotel2,hotel3,hotel4,hotel5,hotel6]

    
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

                     Text("\(Hotels.description)")
                      
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
        
        }
        
    }
    
}




struct ListScreen_Previews: PreviewProvider {
    
    private static var ListScreenisShowing = Binding.constant(false)
    static var previews: some View {
       
        ListScreen(ListScreenisShowing: ListScreenisShowing)
    }
}

