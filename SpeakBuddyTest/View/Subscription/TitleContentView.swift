//
//  PrimaryText.swift
//  SpeakBuddyTest
//
//  Created by Wirawan on 16/10/24.
//

import SwiftUI

struct TitleContentView: View {
    let screenScaling = UIScreen.ScreenScaling.shared
    
    var body: some View {
        VStack {
            Text("Hello")
                .font(.system(size: 36 * screenScaling.proportionalScalingFactor(), design: .default))
                .foregroundColor(.primaryText)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
            
            
            Text("SpeakBUDDY")
                .font(.system(size: 36 * screenScaling.proportionalScalingFactor(), design: .default))
                .foregroundColor(.primaryText)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 82.5)
    }
}
