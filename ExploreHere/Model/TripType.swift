//
//  TripType.swift
//  ExploreHere
//
//  Created by William Souef on 25/09/2022.
//

import SwiftUI

class TripType : ObservableObject {
    @Published var activities : [Activities] = [surfing,hiking,kayaking,guideTour]
}
