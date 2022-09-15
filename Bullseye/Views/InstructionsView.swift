//
//  InstructionsView.swift
//  Bullseye
//
//  Created by Margarita Xiques on 14/09/22.
//

import SwiftUI

struct InstructionsView: View {
    
    @Binding var game: Game
    
    var body: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
                .padding(.trailing, 30.0)
                .padding(.leading, 30.0)
            BigNumberText(text: String(game.target))
        }
    }
    
}

//struct InstructionsView_Previews: PreviewProvider {
//    static var previews: some View {
//        InstructionsView()
//    }
//}
