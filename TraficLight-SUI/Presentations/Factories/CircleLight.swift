//
//  CircleLight.swift
//  TraficLight-SUI
//
//  Created by Самир Джафари on 13.12.2023.
//

import SwiftUI

struct CircleLight: View {
    
    var color: Color
    var size: CGFloat
    
    var strokeColor: Color = .white
    var strokeWidth: CGFloat = 2
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: size, height: size)
            .overlay {
                Circle()
                    .stroke(strokeColor, lineWidth: strokeWidth)
            }
            .padding()
    }
}

#Preview {
    CircleLight(color: .pink, size: 180)
}
