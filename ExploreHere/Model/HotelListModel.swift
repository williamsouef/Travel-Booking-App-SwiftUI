//
//  HotelListModel.swift
//  ExploreHere
//
//  Created by William Souef on 29/08/2022.
//

import Foundation
import SwiftUI

//MARK: MODEL

struct Hotels : Identifiable {
   
    var id = UUID()
    var name : String
    var description: String
    var image : String
    var suitRoom : String?
    var price : Int
    
}


var hotel1 = Hotels(name: "Nice", description: "The Hotel Negresco is an hotel located on the promenade des anglais. it was named by Henri Negresco, its frontopened on the opposite side of Mediterranean Sea", image: "Negresco", suitRoom: "yes",price: 250)
var hotel2 = Hotels(name: "Las Vegas", description: "This chic casino hotel is 4 miles from McCarran international Airport, 1 mile from the Las Vegas Convention Center and 3 miles from the Fremont Street Experience Shopping", image: "Luxor", suitRoom: "yes",price: 200)
var hotel3 = Hotels(name: "Tokyo", description: "Minimalist Hotel ", image: "Tokyo", suitRoom: nil,price: 100)
var hotel4 = Hotels(name: "Sydney", description: "Wonderful Hotel", image: "sydney-1", suitRoom: "Yes",price: 200)
var hotel5 = Hotels(name: "Kenya", description: "Piece of paradise Hotel ", image: "Kenya", suitRoom: "Yes",price: 150)
var hotel6 = Hotels(name: "Bali", description: "Surrended by nature", image: "Bali", suitRoom: nil,price: 80)


var hotelList : [Hotels] = [hotel1,hotel2,hotel3,hotel4,hotel5,hotel6]


func addHotels (newItem: Hotels ) {
   
    hotelList.append(newItem)

}

func hotelSetup () {
    
    addHotels(newItem: hotel1)
    addHotels(newItem: hotel2)
    addHotels(newItem: hotel3)
    addHotels(newItem: hotel4)
    addHotels(newItem: hotel5)
    addHotels(newItem: hotel6)
   
    
}

func displayItemList ( hotelList: [Hotels]) {
    
    var withOutOptionls = [Hotels]()
    
    for hotel in hotelList {
        if hotel.suitRoom != nil {
            withOutOptionls.append(hotel)
        } else {
        continue
        }
    }
    print(withOutOptionls)
}



