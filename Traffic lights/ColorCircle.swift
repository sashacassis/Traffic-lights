//
//  ColorCircle.swift
//  Traffic lights
//
//  Created by Alexandr Dorogov on 16.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 170, height: 170)
            .overlay(Circle().stroke(Color.black, lineWidth: 3))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red)
    }
}
