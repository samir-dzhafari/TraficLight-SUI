//
//  ContentView.swift
//  TraficLight-SUI
//
//  Created by Самир Джафари on 11.12.2023.
//

import SwiftUI

struct RootView: View {
    
    @StateObject var viewModel = RootViewModel()
    
    private var screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        VStack {
            trafficLights
            Spacer()
            primaryButton
        }
        .fullWidth()
        .background(viewModel.currentLight?.color ?? .indigo)
    }
}

//MARK: - Traffic Lights
private extension RootView {
    var trafficLights: some View {
        VStack {
            ForEach(TrafficLight.allCases, id: \.self) {
                CircleLight(
                    color: $0.color.opacity($0 == viewModel.currentLight ? 1 : 0.4),
                    size: 80
                )
            }
        }
        .padding(8)
        .background(.black)
        .clipShape(RoundedRectangle(cornerRadius: 32, style: .continuous))
        .padding(.top, screenHeight / 12)
    }
}

//MARK: - Primary Button
private extension RootView {
    var primaryButton: some View {
        RoundedButton(
            text: viewModel.primaryButtonText,
            color: .white.opacity(0.8),
            padding: screenHeight / 6
        ) {
            viewModel.nextLight()
        }
    }
}

#Preview {
    RootView()
}
