//
//  HomescreenView.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI

struct Homescreen: View {
  
    @State private var OnboardingScreenIsShowing = false
    @State private var ListScreenisShowing = false
  
    
    var body: some View {
       
    
    ZStack {
        ScrollView{
         VStack(alignment: .leading, spacing: 0){
             HStack{
                TitleHome(title: "WELCOME,")
                    .padding()
                    .padding()
                
                Button(action:{
                    withAnimation{
                    OnboardingScreenIsShowing = true
                    }
                }){
                    RoundViews(systemName: "info")
                }.sheet(isPresented: $OnboardingScreenIsShowing, onDismiss: {}, content: {
                    OnboardingScreen(OnboardingScreenIsShowing: $OnboardingScreenIsShowing)
                })
                }
                
            VStack{
                    HStack{
                    
                UserView(username: "WILLIAM SOUEF !")
                        .padding()
                        .padding()
                
                }
                    Spacer()
                }
            }.padding(.leading)
                
            Image("iphone120")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: Constants.General.imageWidth,   height: Constants.General.imageHeight)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color("TitleBackgroundColor"), lineWidth: Constants.General.lineWidth))
                }
                    
               }
                
            }
}
    


    

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        
        Homescreen()
            .previewInterfaceOrientation(.portrait)
            
        Homescreen()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.landscapeRight)
    }
}

