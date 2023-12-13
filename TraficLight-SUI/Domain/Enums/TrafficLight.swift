//
//  TrafficLight.swift
//  TraficLight-SUI
//
//  Created by Самир Джафари on 11.12.2023.
//

import Foundation
import SwiftUI

enum TrafficLight: CaseIterable {
    case Red
    case Yellow
    case Green
}

//MARK: - Next Light
extension TrafficLight {
    func next(reverse: Bool = false) -> TrafficLight {
        switch self {
        case .Red:
            .Yellow
        case .Yellow:
            reverse ? .Red : .Green
        case .Green:
            .Yellow
        }
    }
}

//MARK: - Color
extension TrafficLight {
    var color: Color {
        switch self {
        case .Red:
            Color.red
        case .Yellow:
            Color.yellow
        case .Green:
            Color.green
        }
    }
}
