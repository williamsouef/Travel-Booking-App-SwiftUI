//
//  ExploreHereApp.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI

@main
struct ExploreHereApp: App {
    @StateObject private var tripTide = TripType()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(tripTide)
        }
    }
}
