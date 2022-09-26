//
//  ContentView.swift
//  Bullseye
//
//  Created by Margarita Xiques on 7/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = true
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionsView(game: $game)
                    .padding(.bottom, alertIsVisible ? 0 : 100)
                if alertIsVisible {
                    PointsViews(game: $game, sliderValue: $sliderValue, alertIsVisible: $alertIsVisible)
                        .transition(.scale)
                } else {
                    HitMeButtomView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                        .transition(.scale)
                }
            }
            if !alertIsVisible{
                SliderView(sliderValue: $sliderValue)
                    .transition(.scale)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
        
    }
}
