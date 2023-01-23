//
//  SearchBarView.swift
//  ExploreHere
//
//  Created by William Souef on 22/01/2023.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText : String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? Color("ButtoninfoBackgroundColor"): Color("DarkLight"))
            
            TextField("Type something here...",text: $searchText)
                .foregroundColor(
                    searchText.isEmpty ? Color("RoundedBackgroundColor-1"): Color("DarkLight"))
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x:10)
                        .opacity(
                            searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            searchText = ""
                        }
                    ,alignment: .trailing
                
                )
            
        }
        .padding()
        .font(.headline)
        .background(
        RoundedRectangle(cornerRadius: 25)
            .fill(Color("RoundedBackgroundColor-1"))
        )
        
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant(""))
    }
}
