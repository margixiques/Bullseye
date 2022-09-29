//
//  RoundedImageViewStroked.swift
//  Bullseye
//
//  Created by Margarita Xiques on 14/09/22.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"),lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedImageViewFilled: View {
    
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .background(
            Circle ()
                .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedImageViewStrokedRec: View {
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .font(.title3)
            .fontWeight(.bold)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedRectViewWidth, height: Constants.General.roundedRectViewHeight)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .overlay(
                Circle()
                    .strokeBorder(Color("LeaderboardRowColor"),lineWidth: Constants.General.strokeWidth)
            )
    }
}


struct Preview: View {
    var body: some View {
        VStack (spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedImageViewFilled(systemName: "xmark")
            RoundedTextView(text: "1")
        }
    }
}

struct RoundedView_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
          
        Preview()
            .preferredColorScheme(.dark)
    }
}
