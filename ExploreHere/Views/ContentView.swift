//
//  ContentView.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
       Homescreen()
            VStack{
            Text(hotel1.name)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
