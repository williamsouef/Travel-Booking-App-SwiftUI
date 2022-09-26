//
//  PlanTripModel.swift
//  ExploreHere
//
//  Created by William Souef on 15/09/2022.
//

import Foundation


// ADD THE DATA TO DISPLAY THE CATEGORIES OF EXPERIENCE
// Name,description,image,prices
// ADD THE DATA TO DISPLAY THE SUBCATEGORIES OF EXPERIENCE
// More info + register button

//MARK: MODEL
struct Activities : Identifiable {
    var id = UUID()
    let name : String
    let image : String
    let description : String
    
}


var surfing = Activities(name: "SURFING", image: "surf",description: "You won't forget that, here are the best and the biggest waves that any adventure surfer will dream to jump in.Make your kid interior have fun by booking this amazing experince right now !")
var hiking = Activities(name: "HIKING", image: "hiking",description: "This is the way! Climb this huge mountain and accomplish what just couples of human being are able to do, pass thought your mental and physical obstacle to unlock your potential.")
var kayaking = Activities(name: "KAYAKING", image: "kayaking",description: "Jump into this massive river in high speed your decision is important, you will be in the flow of the life surrended by the cliffs. Here you are small and become big after this ")
var guideTour = Activities(name: "GUIDE-TOUR", image: "guidetour",description: "Visit a beautiful and pittoresque city home to century of history , accompagned by the best and passionate local guide. You will visit, learn and eat like never.")

var activities : [Activities] = [surfing,hiking,kayaking,guideTour]

struct Places : Identifiable {
    var id = UUID()
    let name : String
    let description : String
    let image : String
    
}

var gorgesDuVerdon = Places(name: "gorges du verdon", description: "kayak", image: "")
var hossegor = Places(name: "hossegor", description: "surf", image: "")
var mercantour = Places(name: "Mercantour", description: "hiking", image: "")



