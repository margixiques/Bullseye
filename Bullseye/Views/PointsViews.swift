//
//  PointsViews.swift
//  Bullseye
//
//  Created by Margarita Xiques on 20/09/22.
//

import SwiftUI

struct PointsViews: View {
    @Binding var game: Game
    @Binding var sliderValue: Double
    @Binding var alertIsVisible: Bool
    
    
    var body: some View {
        ZStack {
            
            let roundedValue = Int(sliderValue.rounded())
            let points = game.points(sliderValue: roundedValue)
            
            VStack (spacing: 10) {
                InstructionText(text: "the slider`s value is")
                BigNumberText(text: String(roundedValue))
                BodyText(text: "You scored \(points) Points\n🎉🎉🎉")
                Button {
                    withAnimation {
                        alertIsVisible = false
                    }
                    game.startNewRound(points: points)
                } label: {
                    ButtonText(text: "Start New Round")
                }
            }
            .padding()
            .frame(maxWidth: 315)
            .background(Color("BackgroundColor"))
            .cornerRadius(Constants.General.roundedRectCornerRadius)
            .shadow(radius: 10, x: 5, y: 5)
            .transition(.scale)
        }
    }
}

struct PointsViews_Previews: PreviewProvider {
    static var previews: some View {
        PointsViews(game: .constant(Game()), sliderValue: .constant(50), alertIsVisible: .constant(true))
        PointsViews(game: .constant(Game()), sliderValue: .constant(50),alertIsVisible: .constant(true))
            .preferredColorScheme(.dark)
    }
}
