//
//  TripType.swift
//  ExploreHere
//
//  Created by William Souef on 25/09/2022.
//

import Foundation
import MapKit


//MARK: MODEL VIEW 

class TripType : ObservableObject {
    
    
    
    @Published var activities : [Activities] = []
    @Published var places : [Places] = []
    @Published var total : Int = 0
    @Published var searchText : String = ""
   // @Published var location : [Locations] = []

 
    
    func addActivities(newItem: Activities) {
       
        activities.append(newItem)
        total += newItem.price
    }
    
    func removeFromCart (newItem: Activities){
        
        activities = activities.filter{ $0.id != newItem.id}
        total -= newItem.price
    }
    
  

    }
    

