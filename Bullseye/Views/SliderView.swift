//
//  SliderView.swift
//  Bullseye
//
//  Created by Margarita Xiques on 14/09/22.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            SliderLabelText(text: "1")
                .frame(width: 10.0, height: 21.0, alignment: .center)
                .padding()
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelText(text: "100")
                .frame(width: 34.0, height: 21.0, alignment: .center)
                .padding()
        }
        .padding()
    }
}


//struct SliderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SliderView()
//    }
//}
