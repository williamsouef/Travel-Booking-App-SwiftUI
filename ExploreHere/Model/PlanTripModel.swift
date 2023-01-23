//
//  PlanTripModel.swift
//  ExploreHere
//
//  Created by William Souef on 15/09/2022.
//

import Foundation


// ADD THE QUANTITIES

//MARK: MODEL

struct Activities : Identifiable, Codable {
    
    var id = UUID()
    let name : String
    let image : String
    let description : String
    let price : Int
    
    
  
    
}


var surfing = Activities(name: "SURFING", image: "surf",description: "You won't forget that, here are the best and the biggest waves that any adventure surfer will dream to jump in.Make your kid interior have fun by booking this amazing experince right now !",price: 100)
var hiking = Activities(name: "HIKING", image: "hiking",description: "This is the way! Climb this huge mountain and accomplish what just couples of human being are able to do, pass thought your mental and physical obstacle to unlock your potential.",price: 70)
var kayaking = Activities(name: "KAYAKING", image: "kayaking",description: "Jump into this massive river in high speed your decision is important, you will be in the flow of the life surrended by the cliffs. Here you are small and become big after this ",price: 80)
var guideTour = Activities(name: "GUIDE-TOUR", image: "guidetour",description: "Visit a beautiful and pittoresque city home to century of history , accompagned by the best and passionate local guide. You will visit, learn and eat like never.", price: 200)

var activities = [Activities(name: "SURFING", image: "surf",description: "You won't forget that, here are the best and the biggest waves that any adventure surfer will dream to jump in.Make your kid interior have fun by booking this amazing experince right now !",price: 100),
                       Activities(name: "HIKING", image: "hiking",description: "This is the way! Climb this huge mountain and accomplish what just couples of human being are able to do, pass thought your mental and physical obstacle to unlock your potential.",price: 70),
                       Activities(name: "KAYAKING", image: "kayaking",description: "Jump into this massive river in high speed your decision is important, you will be in the flow of the life surrended by the cliffs. Here you are small and become big after this ",price: 80),
                       Activities(name: "GUIDE-TOUR", image: "guidetour",description: "Visit a beautiful and pittoresque city home to century of history , accompagned by the best and passionate local guide. You will visit, learn and eat like never.", price: 200)]

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



