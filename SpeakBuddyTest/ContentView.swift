//
//  ContentView.swift
//  SpeakBuddyTest
//
//  Created by Wirawan on 12/10/24.
//

import SwiftUI

struct ContentView: View {
    // main view
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.primaryBackgroundGradient, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            VStack {
                CloseContentView()
                TitleContentView()
                
                ZStack {
                    GraphContentView()
                    IconContentView()
                }
                
                Spacer()
                DescriptionContentView()
                ButtonContentView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
    }
}

#Preview {
    ContentView()
}
