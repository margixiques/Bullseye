//
//  HitMeButtomView.swift
//  Bullseye
//
//  Created by Margarita Xiques on 14/09/22.
//

import SwiftUI

struct HitMeButtomView: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            print("Hello, SwiftUI!")
            alertIsVisible = true
        }) {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(
            ZStack {
            Color ("ButtonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 2.0)
        )
        .alert("THE SLIDERS VALUE IS", isPresented: $alertIsVisible) {
            Button("Start New Round") { }
        } message: {
            let roundedValue = Int(sliderValue.rounded())
            Text("The slider`s value is \(roundedValue). \n🎉🎉🎉\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round.")
        }
    }
}

//struct HitMeButtomView_Previews: PreviewProvider {
//    static var previews: some View {
//        HitMeButtomView()
//    }
//}
