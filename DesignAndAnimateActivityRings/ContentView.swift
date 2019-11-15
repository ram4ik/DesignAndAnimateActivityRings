//
//  ContentView.swift
//  DesignAndAnimateActivityRings
//
//  Created by Ramill Ibragimov on 15.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showRedStroke = false
    @State private var showGreenStroke = false
    @State private var showBlueStroke = false
    
    var body: some View {
        
        ZStack {
            
            RadialGradient(gradient: Gradient(colors: [Color.black, Color.black]), center: .center, startRadius: 5, endRadius: 500)
                .scaleEffect(1.2)
            
            Circle() // red
                .trim(from: showRedStroke ? 1/8 : 1, to: 1)
                .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                .frame(width: 250, height: 250)
                .foregroundColor(Color(red: 0.859, green: 0.014, blue: 0.092))
                .rotationEffect(.degrees(90)) // Flips the strokeStart
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .black, radius: 20, y: 5)
                .animation(Animation.easeIn(duration: 1))
                .onAppear() {
                    self.showRedStroke.toggle()
            }
                //.offset(y: -130)
            Circle() // Green
                .trim(from: showGreenStroke ? 1/3 : 1, to: 1)
                .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                .frame(width: 189, height: 189)
                .foregroundColor(Color(red: 0.618, green: 0.968, blue: -0.013))
                .rotationEffect(.degrees(90)) // Flips the strokeStart
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .black, radius: 20, y: 5)
                //.offset(y: -130
                .animation(Animation.easeOut(duration: 1))
                .onAppear() {
                    self.showGreenStroke.toggle()
            }
            
            Circle() // Blue
                .trim(from: showBlueStroke ? 1/6 : 1, to: 1)
                .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                .frame(width: 128, height: 128)
                .foregroundColor(Color(red: 0.002, green: 0.884, blue: 0.842))
                .rotationEffect(.degrees(90)) // Flips the strokeStart
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                //.offset(y: -130)
                .shadow(color: .black, radius: 20, y: 5)
                .animation(Animation.easeInOut(duration: 1))
                .onAppear() {
                    self.showBlueStroke.toggle()
            }
            
            Button(action: {
                self.showRedStroke.toggle()
                self.showGreenStroke.toggle()
                self.showBlueStroke.toggle()
                
            }) {
                Image(systemName: "tornado")
                    .font(.largeTitle)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
