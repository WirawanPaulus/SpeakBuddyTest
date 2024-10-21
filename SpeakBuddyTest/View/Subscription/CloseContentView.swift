//
//  BottomContentView 2.swift
//  SpeakBuddyTest
//
//  Created by Wirawan on 17/10/24.
//

import SwiftUI

struct CloseContentView: View {
    let screenScaling = UIScreen.ScreenScaling.shared
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                // Action to close or handle button tap
                print("Close button tapped")
            }) {
                Text("x")
                    .font(.custom("HiraginoSans-W7", size: 20 * screenScaling.proportionalScalingFactor()))
                    .foregroundColor(.primaryText)
            }
            .frame(width: 38 * screenScaling.proportionalScalingFactor(), height: 38 * screenScaling.proportionalScalingFactor())
            .background(Color.white)
            .cornerRadius(38 * screenScaling.proportionalScalingFactor())
            .shadow(color: Color.black.opacity(0.15), radius: 4, x: 0, y: 2) // For shadow effect
        }
        .padding(.horizontal, 21 * screenScaling.widthScalingFactor())
    }
}

