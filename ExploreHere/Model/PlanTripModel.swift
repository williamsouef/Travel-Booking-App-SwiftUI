//
//  PlanTripModel.swift
//  ExploreHere
//
//  Created by William Souef on 15/09/2022.
//

import Foundation
import MapKit


// ADD THE QUANTITIES

//MARK: MODEL

struct Activities : Identifiable {
    
    var id = UUID()
    let name : String
    let image : String
    let description : String
    let price : Int
    let latitude : Double
    let longitude : Double
    
    
    var coordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}



var activities = [Activities(name: "SURFING", image: "surf",description: "You won't forget that, here are the best and the biggest waves that any adventure surfer will dream to jump in.Make your kid interior have fun by booking this amazing experince right now !",price: 100,latitude: -33.8923671, longitude: 151.2737011),
                       Activities(name: "HIKING", image: "hiking",description: "This is the way! Climb this huge mountain and accomplish what just couples of human being are able to do, pass thought your mental and physical obstacle to unlock your potential.",price: 70, latitude: 36.1949524, longitude: -112.9778795),
                       Activities(name: "KAYAKING", image: "kayaking",description: "Jump into this massive river in high speed your decision is important, you will be in the flow of the life surrended by the cliffs. Here you are small and become big after this ",price: 80,latitude: 43.7614, longitude: 6.3788),
                       Activities(name: "GUIDE-TOUR", image: "guidetour",description: "Visit a beautiful and pittoresque city home to century of history , accompagned by the best and passionate local guide. You will visit, learn and eat like never.", price: 200,latitude: 35.6773648, longitude: 139.6961693)]

struct Places : Identifiable {
    var id = UUID()
    let name : String
    let description : String
    let image : String
    
}

var gorgesDuVerdon = Places(name: "gorges du verdon", description: "kayak", image: "kayaking")
var hossegor = Places(name: "hossegor", description: "surf", image: "surf")
var mercantour = Places(name: "Mercantour", description: "hiking", image: "hiking")

var places : [Places]  = [gorgesDuVerdon,hossegor,mercantour]


var surfing = Activities(name: "SURFING", image: "surf",description: "You won't forget that, here are the best and the biggest waves that any adventure surfer will dream to jump in.Make your kid interior have fun by booking this amazing experince right now !", price: 100, latitude: 33.8915, longitude: 151.2767)
var hiking = Activities(name: "HIKING", image: "hiking",description: "This is the way! Climb this huge mountain and accomplish what just couples of human being are able to do, pass thought your mental and physical obstacle to unlock your potential.",price: 70,latitude: 36.0544, longitude: 112.1401)
var kayaking = Activities(name: "KAYAKING", image: "kayaking",description: "Jump into this massive river in high speed your decision is important, you will be in the flow of the life surrended by the cliffs. Here you are small and become big after this ",price: 80,latitude: 43.7614, longitude: 6.3788)
var guideTour = Activities(name: "GUIDE-TOUR", image: "guidetour",description: "Visit a beautiful and pittoresque city home to century of history , accompagned by the best and passionate local guide. You will visit, learn and eat like never.", price: 200,latitude: 8.5194, longitude: 115.2606)

