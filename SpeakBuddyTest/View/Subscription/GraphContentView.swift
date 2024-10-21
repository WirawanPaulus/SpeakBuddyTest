//
//  GraphContentView.swift
//  SpeakBuddyTest
//
//  Created by Wirawan on 18/10/24.
//

import SwiftUI

struct BarView: View {
    let screenScaling = UIScreen.ScreenScaling.shared
    
    let value: Double
    let title: String
    let height: CGFloat
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.primaryBarGradient, .secondaryBarGradient]), // Bar gradient Color
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
                .frame(width: 48 * screenScaling.widthScalingFactor(), height: height) // Adjust height based on data
                .cornerRadius(2.73 , corners: [.topLeft, .topRight])
            
            // Render Bar title
            Text(title)
                .font(.custom("HiraginoSans-W7", size: 12 * screenScaling.proportionalScalingFactor()))
                .frame(maxWidth: .infinity)
                .foregroundColor(.primaryText)
                .padding(.top, 7 * screenScaling.heightScalingFactor())
        }
    }
}

struct GraphContentView: View {
    let screenScaling = UIScreen.ScreenScaling.shared
    
    // Sample data for the bar graph using tuple string and double
    let data: [(String, Double)] = [("現在", 66), ("3ヶ月", 100), ("1年", 220), ("2年", 300)]
    
    // State variable to trigger the animation
    @State private var animateBars = false
    
    var body: some View {
        VStack {
            // Bar graph with GeometryReader to dynamically calculate the bar height
            GeometryReader { geometry in
               
                HStack(alignment: .bottom, spacing: 19.5 * screenScaling.widthScalingFactor()) {
                    if let maxValue = data.map({ $0.1 }).max() {
                        
                        ForEach(0..<data.count, id: \.self) { index in
                            // Calculate the full height for each bar based on the data value
                            let fullHeight = CGFloat(data[index].1) / CGFloat(maxValue) * geometry.size.height
                            
                            // Initially, the bars have a height of 0 and grow to fullHeight
                            let barHeight = animateBars ? fullHeight : 0
                            
                            let title = data[index].0
                            
                            BarView(value: data[index].1, title: title, height: barHeight)
                                .animation(.easeOut(duration: 0.75).delay(Double(index) * 0.3), value: barHeight)
                                .offset(x: animateBars ? 0 : 0, y: animateBars ? 0 : 325 * screenScaling.heightScalingFactor())
                        }
                    }
                }
            }
            .onAppear {
                // Trigger animation when view appears
                animateBars = true
            }
        }
        .frame(width: 270 * screenScaling.widthScalingFactor(), height: 325 * screenScaling.heightScalingFactor()) // Set the width and height for the graph
        .offset(y: 20 * screenScaling.heightScalingFactor()) // Set Y position for the Graph
    }
}
