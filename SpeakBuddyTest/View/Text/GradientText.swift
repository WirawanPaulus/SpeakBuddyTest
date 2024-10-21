//
//  GradientText.swift
//  SpeakBuddyTest
//
//  Created by Wirawan on 12/10/24.
//


import SwiftUI

struct GradientText: View {
    var text: String
    var gradientColors: [Color] = [.primaryTextGradient, .secondaryTextGradient] //Gradient Color
    let screenScaling = UIScreen.ScreenScaling.shared
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: gradientColors),
            startPoint: .top,
            endPoint: .bottom
        )
        .mask(
            Text(text)
                .font(.custom("HiraginoSans-W6", size: 30 * screenScaling.proportionalScalingFactor()))
                .lineSpacing(45 - 30) // Line height = 45px, Text size = 30px, so set line spacing
                .kerning(-0.57) // Letter spacing -0.57px
                .multilineTextAlignment(.center) // Center alignment
        )
    }
}
