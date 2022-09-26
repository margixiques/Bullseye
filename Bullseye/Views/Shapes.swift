//
//  Shapes.swift
//  Bullseye
//
//  Created by Margarita Xiques on 20/09/22.
//

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    
    var body: some View {
        VStack (spacing: 10){
            if !wideShapes {
                Circle()
                    .stroke(Color.blue, lineWidth: 20)
                    .frame(width: 200, height: 100)
                    .transition(.opacity)
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            Button("Animate!") {
                withAnimation {
                    wideShapes.toggle()
                }
            }
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
