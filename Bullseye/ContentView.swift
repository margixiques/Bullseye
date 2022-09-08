//
//  ContentView.swift
//  Bullseye
//
//  Created by Margarita Xiques on 7/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO ")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .padding()
            Text("89")
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(-1.0)
                .frame(width: 53.0, height: 43.0, alignment: .center)
                .padding()
            HStack {
                Text("1")
                    .font(.body)
                    .fontWeight(.bold)
                    .frame(width: 10.0, height: 21.0, alignment: .center)
                    .padding()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .font(.body)
                    .fontWeight(.bold)
                    .frame(width: 34.0, height: 21.0, alignment: .center)
                    .padding()
            }
            Button(action: {
                print("Hello, SwiftUI!")
                self.alertIsVisible = true
            }) {
                Text("Hit me").padding()
            }
            .alert("THE SLIDERS VALUE IS", isPresented: $alertIsVisible) {
                Button("Start New Round") { }
            } message: {
                let roundedValue: Int = Int(self.sliderValue.rounded())
                Text("The slider`s value is \(roundedValue). \n🎉🎉🎉")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
