//
//  TextViews.swift
//  Bullseye
//
//  Created by Margarita Xiques on 12/09/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.black)
            .kerning(-1.0)
            .foregroundColor(Color("TextColor"))
            .frame(width: 75.0, height: 43.0, alignment: .center)
            .padding()
    }
}

struct SliderLabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(Color("TextColor"))
            .frame(width: 34.0, height: 21.0)
    }
}

struct LabelText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .font(.caption)
            .fontWeight(.bold)
            .kerning(1.5)
            .foregroundColor(Color("TextColor"))
    }
}

struct BodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .font(.subheadline)
            .lineSpacing(12.0)
           
        
    }
}

struct ButtonText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .font(.body)
            .foregroundColor(Color.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(
                Color.accentColor
            )
            .cornerRadius(12.0)
    }
}

struct ScoreText: View {
    var score: Int
    
    var body: some View {
        Text(String(score))
            .font(.title3)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(-0.2)
            .multilineTextAlignment(.center)
    } 
}

struct DateText: View {
    var date: Date

    var body: some View {
        Text(date, style: .time)
            .font(.title3)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(-0.2)
            .multilineTextAlignment(.center)
    }
}

struct HeaderTextView: View {

    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .font(.title)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
            .kerning(2.0)
            .multilineTextAlignment(.center)
    }
}

struct LabelTextView: View {

    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .font(.caption)
            .fontWeight(.bold)
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .multilineTextAlignment(.center)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        InstructionText(text: "THE SLIDER VALUE IS")
        BigNumberText(text: "89")
        //SliderLabelText(text: "1")
        BodyText(text: "You scored 200 Points\n🎉🎉🎉")
        ButtonText(text: "Start New Round")
        }
        .padding()
    }
}
