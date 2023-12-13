//
//  RootViewModel.swift
//  TraficLight-SUI
//
//  Created by Самир Джафари on 11.12.2023.
//

import SwiftUI

final class RootViewModel: ObservableObject {
    
    @Published var currentLight: TrafficLight? = nil
    
    @Published var primaryButtonText: String = "Начать"
    
    private var reverse = true
    
    func nextLight() {
        guard let currentLight else {
            self.currentLight = .Green
            primaryButtonText = "Переключить"
            return
        }
        
        self.currentLight = currentLight.next(reverse: reverse)
        
        switch self.currentLight {
        case .Red:
            reverse = false
        case .Green:
            reverse = true
        default:
            break
        }
    }
}
