//
//  TabModel.swift
//  ExploreHere
//
//  Created by William Souef on 29/11/2022.
//

import SwiftUI


enum Tab: Int, Identifiable, CaseIterable, Comparable {
    static func < (lhs: Tab, rhs: Tab) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
    
    case home, hotel, activities, cart
    
    internal var id: Int { rawValue }
    
    var icon: String {
        switch self {
        case .home:
            return "house.fill"
        case .hotel:
            return "bed.double"
        case .activities:
            return "figure.walk"
        case .cart:
            return "cart"
        }
    }
    
    
    
    var color: Color {
        switch self {
        case .home:
            return .indigo
        case .hotel:
            return .pink
        case .activities:
            return .orange
        case .cart:
            return .teal
        }
    }
    
    
}
