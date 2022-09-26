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
        Button {
            withAnimation {
                alertIsVisible = true
            }
        } label: {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(
            ZStack {
                Color ("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]),
                               startPoint: .top,
                               endPoint: .bottom)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(Constants.General.roundedRectCornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
                .strokeBorder(Color.white, lineWidth: Constants.General.strokeWidth)
        )
        
    }
}

//struct HitMeButtomView_Previews: PreviewProvider {
//    static var previews: some View {
//        HitMeButtomView()
//    }
//}
