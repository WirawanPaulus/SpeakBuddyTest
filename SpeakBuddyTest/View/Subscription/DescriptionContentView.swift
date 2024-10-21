//
//  BottomContentView.swift
//  SpeakBuddyTest
//
//  Created by Wirawan on 17/10/24.
//
import SwiftUI

struct DescriptionContentView: View {
    let screenScaling = UIScreen.ScreenScaling.shared
    
    var body: some View {
        VStack {
            Text("スピークバディで")
                .font(.custom("HiraginoSans-W5", size: 20 * screenScaling.proportionalScalingFactor()))
                .frame(maxWidth: .infinity)
                .foregroundColor(.primaryText)
            GradientText(text: "レベルアップ")
                .frame(maxWidth: .infinity)
        }
        .frame(maxHeight: 75 * screenScaling.heightScalingFactor())
        .padding(.top, 56 * screenScaling.heightScalingFactor())
        .padding(.horizontal, 82.5 * screenScaling.widthScalingFactor())
    }
}
