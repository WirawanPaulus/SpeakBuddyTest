//
//  ScreenScaling.swift
//  SpeakBuddyTest
//
//  Created by Wirawan on 20/10/24.
//


import UIKit

extension UIScreen {
    struct ScreenScaling {
        
        // iPhone 14 dimensions as base device on figma
        private let iPhone14Width: CGFloat = 390.0
        private let iPhone14Height: CGFloat = 844.0

        // Singleton instance
        static let shared = ScreenScaling()

        // Private initializer to prevent instantiation
        private init() {}

        // Function to calculate scale factor for width
        func widthScalingFactor() -> CGFloat {
            let currentDeviceWidth = UIScreen.main.bounds.width
            return currentDeviceWidth / iPhone14Width
        }

        // Function to calculate scale factor for height
        func heightScalingFactor() -> CGFloat {
            let currentDeviceHeight = UIScreen.main.bounds.height
            return currentDeviceHeight / iPhone14Height
        }

        // Function to get the minimum scaling factor for proportional scaling
        func proportionalScalingFactor() -> CGFloat {
            return min(widthScalingFactor(), heightScalingFactor())
        }
    }
}
