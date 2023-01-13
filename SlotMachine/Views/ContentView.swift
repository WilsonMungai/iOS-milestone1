//
//  ContentView.swift
//  SlotMachine
//
//  Created by Wilson Mungai on 2023-01-11.
//

import SwiftUI

// MARK: Properties

struct ContentView: View {
    
    // MARK: Body
    var body: some View {
        ZStack {
            // MARK: Background
            // Creates a gradient
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]),
                           startPoint: .top,
                           endPoint: .bottom)
            // Extends the view outside the safe area zone
            .edgesIgnoringSafeArea(.all)
            
            
            // MARK: Interface
            VStack (alignment: .center, spacing: 5) {
                // MARK: Header
                LogoView()
                Spacer()
                
                // MARK: Score
                HStack {
                    HStack {
                        Text("Your\nCoins".uppercased())
                        // Added extensions for the view
                            .scoreLabelStye()
                            .multilineTextAlignment(.trailing)
                        
                        Text("100")
                        // Added extensions for the view
                            .scoreNumber()
                        // Added modifier for the view
                            .modifier(ScoreLabelModifier())
                    }
                    // Added modifier for the hstack
                    .modifier(ScoreContainerModifier())
                    
                    Spacer()
                    
                    HStack {
                        Text("200")
                        // Added extensions for the view
                            .scoreNumber()
                        // Added modifier for the view
                            .modifier(ScoreLabelModifier())
                        
                        Text("High\nScore".uppercased())
                        // Added extensions for the view
                            .scoreLabelStye()
                            .multilineTextAlignment(.leading)
                        
                    } // Added modifier for the hstack
                    .modifier(ScoreContainerModifier())
                }
               
          
                
                // MARK: Slot Machine
                VStack(alignment: .center, spacing: 0) {
                    // MARK: Reel 1
                    ZStack {
                        ReelView()
                        Image("bell")
                            .resizable()
                            .modifier(ReelImageModifier())
                    }
                    
                    HStack(alignment: .center, spacing: 0) {
                        // MARK: Reel 2
                        ZStack {
                            ReelView()
                            Image("grape")
                                .resizable()
                                .modifier(ReelImageModifier())
                        }
                        
                        Spacer()
                        
                        // MARK: Reel 3
                        ZStack {
                            ReelView()
                            Image("cherry")
                                .resizable()
                                .modifier(ReelImageModifier())
                        }
                    }
                    .frame(maxWidth: 500)
                    
                    // MARK: Spin button
                    ZStack {
                        Button(action: {
                            print("Spin the reel")
                        }){
                            Image("spin")
                                .renderingMode(.original)
                                .resizable()
                                .modifier(ReelImageModifier())
                        }
                    }
                    
                }
                .layoutPriority(2)
                
                // MARK: Footer
                Spacer()
                
                // MARK: Buttons
            }
            .overlay(
                // Reset button
                Button(action : {
                    print("Reset the game") }) {
                        Image(systemName: "arrow.counterclockwise")
                    }
                    .modifier(ButtonModifier()), alignment: .topLeading
            )
            .padding()
            // Positions the view with an invisible frame
            .frame(maxWidth: 720)
            
            // MARK: PopUp
        }
    }
}

// MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
