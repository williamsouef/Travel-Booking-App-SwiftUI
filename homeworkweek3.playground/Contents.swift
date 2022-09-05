import UIKit


var christmasDiscount = 0.10
var itemsPrices = [100.0,150.0,200.0,250.0,200.0,150.0,100.0]
var totalAmount = 1150.0
var discountType = 0.05
var discountPercentage : [Double] = [0.05,0.10,0.20]




func totalAmountAfterReturning (totalAmount: Double , discountPercentage: Double = 0.5) -> Double {
  
    let discountedAmount = totalAmount * discountPercentage
    let totalAmountAfterReturning = totalAmount - discountedAmount
    return totalAmountAfterReturning
}

totalAmountAfterReturning(totalAmount: 1200.0)
 
func add (totalAmount: Double , discountType: Double) -> Double {
    totalAmount + discountType
}


typealias Operate = (Double, Double) -> Double

var operate = add

func printResult(_ operate: Operate, totalAmount: Double, discountType: Double) {
  let result = operate(totalAmount, discountType)
  print(result)
}

// MARK Assignement 4 CLOSURES
var addClosure = {(totalAmount:Double, discountType:Double) -> Double in
    totalAmount * discountType
}


// MARK Assignement 5 MAP

itemsPrices.forEach { print ($0) }

var arrayForIncreasePrice : [Double] = []
for price in itemsPrices {
    arrayForIncreasePrice.append(price * 0.5)
}
print(arrayForIncreasePrice)

var increasePrice = itemsPrices.map { items -> Double in
    items * 0.5
}

func newPrice (itemsPrices:Double , increasePrice: Double = 0.5 ) -> Double{
let newPrice = itemsPrices + increasePrice
return newPrice
}

// Assignement 6 SORTED USING DICTIONARY

var discountTypes = ["Christmas Discount": 0.10,"Default Discount": 0.05,"NYE Discount": 0.20]
discountTypes.count

let sortedTwo = discountTypes.sorted {
    return $0.value > $1.value
}

print(sortedTwo)

// Assignement 7 ENUM + SWITCH CASES


enum DiscountType : Double {
    
    case christmasDiscount = 0.10
    case defaultDiscount = 0.05
    case nyeDiscount = 0.20
    
}


let discountPurse : [DiscountType] = [.christmasDiscount,.defaultDiscount,.nyeDiscount]

let total = discountPurse.reduce(0.0) { (result,DiscountType) -> Double in
    result + DiscountType.rawValue
    
}

// Assignement 8 COMPUTERS PROPERTY


struct CurrentDiscount {
 
    var itemsPrice : Double
    var christmasSales : Double
    var discount : Double {
               return christmasSales * itemsPrice
            }
    var discountAfterReturning : Double {
        return itemsPrice - discount
    }
        }


var currentDiscountAmount = CurrentDiscount(itemsPrice: 100, christmasSales: 0.15)
print("The current amount of discount is \(currentDiscountAmount.discount) dollars")
print("The new prices now is \(currentDiscountAmount.discountAfterReturning) dollars")


// Assignement 9 LAZY PROPERTY


func maximumDiscount (discountType : String) {
    // create the body of the function in order to call this function in a lazyproperty
}

// Assignement 10 METHOD

struct Discount {
    

    var itemsPrices = [100.0,150.0,200.0,250.0,200.0,150.0,100.0]
    var totalAmount = 1150.0
    var discountType = 0.05

    
    mutating func calculateDiscountAmount(totalAmount: Double , discountType: Double ) -> Double  {
        let discountedAmount = totalAmount * discountType
        let calculateDiscountAmount = totalAmount - discountedAmount
        return calculateDiscountAmount
        
    }
    
}


