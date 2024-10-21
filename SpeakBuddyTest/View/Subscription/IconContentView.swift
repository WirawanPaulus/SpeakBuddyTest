//
//  GraphAndIconView.swift
//  SpeakBuddyTest
//
//  Created by Wirawan on 18/10/24.
//

import SwiftUI

struct IconContentView: View {
    let screenScaling = UIScreen.ScreenScaling.shared
    
    var body: some View {
        //Render Image
        Image("ic_protty")  // Replace with the name of your image in the asset catalog
            .resizable()
            .scaledToFit()  // Scale the image to fit within its frame
            .frame(width: 189 * screenScaling.widthScalingFactor(), height: 161 * screenScaling.heightScalingFactor()) // Set the desired frame size
            .position(x: 120 * screenScaling.widthScalingFactor(), y: 80 * screenScaling.heightScalingFactor())
    }
}
