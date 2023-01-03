//
//  TabsView.swift
//  ExploreHere
//
//  Created by William Souef on 29/11/2022.
//

import SwiftUI

struct TabsView: View,Hashable{
   
    var body: some View {
        VStack{
            

        TabsLayoutView()
            .padding()
            .background(
                Capsule()
            .fill(.white)
    .frame(height: 70)
    .shadow(radius: 60))
            
            
        }
    }
    }



 struct TabsLayoutView: View {
    @AppStorage("selectedBar") var selectedBar : Tab = .cart
    @State var selectedTab: Tab = .cart
    @Namespace var namespace
    
    var body: some View {
        HStack {
            ForEach(Tab.allCases) { tab in
                TabButton(tab: tab, selectedTab: $selectedTab, namespace: namespace)
            }
        }
    }



private struct TabButton: View {
    let tab: Tab
    @Binding var selectedTab: Tab
    var namespace: Namespace.ID
    @State private var selectedOffset: CGFloat = 0
    @State private var rotationAngle: CGFloat = 0
    private var isSelected: Bool {
        selectedTab == tab
    }
    
    var body : some View {
        Button {
            withAnimation(.easeInOut) {
                selectedTab = tab
            }
            
            //selectedOffset = -60
            //if tab < selectedTab {
            //    rotationAngle += 360
           // } else {
           //     rotationAngle -= 360
           // }
           // DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
           //     selectedOffset = 0
           //     if tab < selectedTab {
           //         rotationAngle += 720
           //     } else {
           //         rotationAngle -= 720
           //     }
            //}
        } label: {
            ZStack {
                if isSelected {
                    Capsule()
                        .fill(tab.color.opacity(0.2))
                        .matchedGeometryEffect(id: "Selected Tab", in: namespace)
                }
                HStack(spacing: 10) {
                    Image(systemName: tab.icon)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(isSelected ? tab.color : .black.opacity(1))
                        .rotationEffect(.degrees(rotationAngle))
                        .scaleEffect(isSelected ? 1.5 : 0.9)
                        .animation(.easeInOut, value: rotationAngle)
                        .opacity(isSelected ? 1 : 0.9)
                        .padding(.leading, isSelected ? 0 : 0)
                        .padding(.horizontal, selectedTab != tab ? 5 : 0)
                        .offset(y: selectedOffset)
                        .animation(.default, value: selectedOffset)
    }
               
}
}
    }
}
}
struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
            .frame( height: 80)
          
    }
}
