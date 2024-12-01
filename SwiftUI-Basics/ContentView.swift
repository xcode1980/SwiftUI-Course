//
//  ContentView.swift
//  SwiftUI-Basics
//
//  Created by Yevgeny Levin on 01/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    let gradientColors: [Color] = [.blue, .red]
    let gradientColor2:[Color] = [.red, .blue]
    
    @State private var screenTapped: Bool = false //Need to use @State to change the value in View
    @State private var offsetY: CGFloat = -1000.00
    //Computed property
    var colors: [Color] {
        screenTapped ? gradientColors : gradientColor2
    }
    
    var body: some View {
//        VStack(spacing: 100) {
//            Text("SwiftUI Basics")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundStyle(.green)
//            
//            Text("SwiftUI Basics")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundStyle(.red)
//            
//            Text("SwiftUI Basics")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundStyle(.blue)
//        }
        
        ZStack {
            //Background color
//            Color.blue
//                .opacity(0.6)
//                .edgesIgnoringSafeArea(.all)
            
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.8)
                .edgesIgnoringSafeArea(.all)
            
            
            //Text
            Text("SwiftUI Basics")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .offset(y: offsetY)
        }
        .onTapGesture {
         
            withAnimation(.easeInOut(duration: 1)) {
                //TODO: Change screen color on screen tap

                screenTapped.toggle()
                offsetY = screenTapped ? 0 : -1000
                
//                if screenTapped {
//                    offsetY = 0
//                }else{
//                    offsetY = -1000
//                }
           
            }
           
           
        }
    }
}

#Preview {
    ContentView()
}
