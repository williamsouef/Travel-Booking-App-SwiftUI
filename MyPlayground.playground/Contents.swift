import Foundation
import UIKit

struct Hotels  {
   

    var name : String
    var description: String
    var image : String
    var suitRoom : String?
    var price : Int
    
}



var hotel1 = Hotels(name: "Negresco", description: "Majestic hotels in Nice", image: "", suitRoom: "yes",price: 250)
var hotel2 = Hotels(name: "Las Vegas", description: "Luxury Hotel Up to the casino", image: "", suitRoom: "yes",price: 200)
var hotel3 = Hotels(name: "Tokyo", description: "Minimalist Hotel ", image: "", suitRoom: nil,price: 100)
var hotel4 = Hotels(name: "Sydney", description: "Wonderful Hotel", image: "", suitRoom: "Yes",price: 200)
var hotel5 = Hotels(name: "Kenya", description: "Piece of paradise Hotel ", image: "", suitRoom: "Yes",price: 150)
var hotel6 = Hotels(name: "Bali", description: "Surrended by nature", image: "", suitRoom: nil,price: 80)


var hotelList : [Hotels] = []


func addItems (newItem: Hotels ) {
   
    hotelList.append(newItem)
}

addItems(newItem: hotel1)
addItems(newItem: hotel2)
addItems(newItem: hotel3)
addItems(newItem: hotel4)
addItems(newItem: hotel5)
addItems(newItem: hotel6)

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

displayItemList(hotelList: hotelList)


