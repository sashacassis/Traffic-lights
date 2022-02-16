//
//  ContentView.swift
//  Traffic lights
//
//  Created by Alexandr Dorogov on 16.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State var redLight: Color = .red.opacity(0.1)
    @State var yellowLight: Color = .yellow.opacity(0.1)
    @State var greenLight: Color = .green.opacity(0.1)
    
    @State var buttonText = Text("Start")
    
    @State var currentColor: CurrentColor = .none
    
    var body: some View {
        ZStack{
            Color.black.opacity(0.95)
                .ignoresSafeArea()
            VStack{
                ColorCircle(color: redLight)
                ColorCircle(color: yellowLight)
                ColorCircle(color: greenLight)
                Spacer()
                Button(action: { changeColor() }) {
                    buttonText
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        
                }
            }
        }
    }
    
    func changeColor() {
        switch currentColor {
        case .red:
            redLight = .red.opacity(0.1)
            yellowLight = .yellow
            currentColor = .yellow
        case .yellow:
            yellowLight = .yellow.opacity(0.1)
            greenLight = .green
            currentColor = .green
        case .green:
            greenLight = .green.opacity(0.1)
            redLight = .red
            currentColor = .red
        case .none:
            redLight = .red
            buttonText = Text("Next")
            currentColor = .red
        }
    }
    
    enum CurrentColor {
        case red
        case yellow
        case green
        case none
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
