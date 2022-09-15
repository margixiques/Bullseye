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
    }
}

struct LabelTitleText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .font(.caption)
            .fontWeight(.bold)
            .kerning(1.5)
            .foregroundColor(Color("TextColor"))
    }
}

struct LabelRecText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .font(.title3)
            .fontWeight(.bold)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        InstructionText(text: "Instruction")
        BigNumberText(text: "888")
        SliderLabelText(text: "1")
        LabelTitleText(text: "Score")
        }
    }
}
