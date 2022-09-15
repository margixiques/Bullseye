//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Margarita Xiques on 14/09/22.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash")
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 30)
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack {
            LabelTitleText(text: title)
            ZStack {
                RoundedImageViewStrokedRec()
                    .frame(width: 56.0, height: 56.0)
                LabelRecText(text: text)
            }
            
        }
        
    }
}

struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 30)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
