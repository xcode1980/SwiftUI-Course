//
//  ContentView.swift
//  SwiftUI-Basics
//
//  Created by Yevgeny Levin on 01/12/2024.
//

import SwiftUI

struct ContentView: View {
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
            
            LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.8)
                .edgesIgnoringSafeArea(.all)
            
            
            //Text
            Text("SwiftUI Basics")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
