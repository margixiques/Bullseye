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
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"),lineWidth: 2.0 )
            )
    }
}

struct RoundedImageViewFilled: View {
    
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
            Circle ()
                .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedImageViewStrokedRec: View {
    var body: some View {
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            .frame(width: 68.0, height: 56.0)
    }
}


struct Preview: View {
    var body: some View {
        VStack (spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
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
