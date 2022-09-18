//
//  OnboardingView.swift
//  ExploreHere
//
//  Created by William Souef on 23/08/2022.
//

import SwiftUI



struct OnboardingScreen: View {
    @Binding var OnboardingScreenIsShowing: Bool
  
    
    var body: some View {
     
        ZStack {
            LinearGradient(colors: [.blue,.gray], startPoint: .topLeading, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .center, spacing: 10.0){
                
                ScrollView{
                    
                        
                        
             Text("Explore")
                    
                        .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(Color("TitleBackgroundColor"))
                    .padding(.leading)
                    
                    Spacer()
                    Spacer()
                    
                    
                Image("Sydney")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: Constants.General.imageWidth,   height: Constants.General.imageHeight)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color("TitleBackgroundColor"), lineWidth: Constants.General.lineWidth))
                
               Spacer()
              .padding()
               Divider()
               
                
                VStack(alignment: .center, spacing: 20.0){
                InfoView(text: "Plan a trip with friends                     ", systemName: "checkmark.circle.fill")
                InfoView(text: "Choose Amazing Cities to Explore   ", systemName: "checkmark.circle.fill")
                InfoView(text: "Share the bills with your friends        ", systemName: "checkmark.circle.fill")
                InfoView(text: "Let us Reviews and Pictures              ", systemName: "checkmark.circle.fill")
                }
                    Button(action: {
                         OnboardingScreenIsShowing = false
                    }){
                        RoundViews(systemName: "xmark")
                            
                    }.padding()

                }
        }
    }
}

}





struct OnboardingScreen_Previews: PreviewProvider {
    
    private static var OnboardingScreenIsShowing = Binding.constant(false)
    static var previews: some View {
        OnboardingScreen(OnboardingScreenIsShowing: OnboardingScreenIsShowing)
        OnboardingScreen(OnboardingScreenIsShowing: OnboardingScreenIsShowing)
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.landscapeLeft)
      
            
    }
}
