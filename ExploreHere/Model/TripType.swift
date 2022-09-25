//
//  TripType.swift
//  ExploreHere
//
//  Created by William Souef on 25/09/2022.
//

import Foundation

class TripType : ObservableObject {
    
    @Published var activities : [Activities] = []
    @Published var total : Int = 0
    
    
    func addActivities(newItem: Activities) {
       
        activities.append(newItem)
    }
    
    func removeFromCart (newItem: Activities){
        
        activities = activities.filter{ $0.id != newItem.id}
    }
    
}
