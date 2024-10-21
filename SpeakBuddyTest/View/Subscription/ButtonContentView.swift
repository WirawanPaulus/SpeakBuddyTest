//
//  ButtonContentView.swift
//  SpeakBuddyTest
//
//  Created by Wirawan on 18/10/24.
//

import SwiftUI

struct ButtonContentView: View {
    let screenScaling = UIScreen.ScreenScaling.shared
    
    var body: some View {
        VStack {
            Button(action: {
                // Action to perform when the button is tapped
                debugPrint("Button tapped")
            }) {
                Text("プランに登録する")
                    .font(.custom("HiraginoSans-W6", size: 16 * screenScaling.proportionalScalingFactor())).foregroundColor(.white)
                    .padding()  // Add padding for better button appearance
                    .frame(maxWidth: .infinity, maxHeight: 56 * screenScaling.heightScalingFactor())  // Make the button span the full width
                    .background(Color.primaryButton)  // Set background color of the button
                    .cornerRadius(28.66 * screenScaling.proportionalScalingFactor())  // Set corner radius
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)  // Drop shadow with 10px vertical offset/ Adjusted shadow opacity to 20%
            }
            .overlay(  // Add the white border
                RoundedRectangle(cornerRadius: 28.66 * screenScaling.proportionalScalingFactor())
                    .stroke(Color.white, lineWidth: 1)  // 1px white border
            )
            .padding(.vertical, 16 * screenScaling.proportionalScalingFactor())  // Add vertical padding
            .padding(.horizontal, 24 * screenScaling.proportionalScalingFactor())  // Adjust horizontal padding
        }
        .frame(maxWidth: .infinity)  // Ensure the VStack takes full width
    }
}
