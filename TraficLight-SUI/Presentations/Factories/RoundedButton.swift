//
//  RoundedButton.swift
//  TraficLight-SUI
//
//  Created by Самир Джафари on 13.12.2023.
//

import SwiftUI

struct RoundedButton: View {
    
    var text: String
    
    var color: Color = .white
    var tint: Color = .black
    
    var strockWidth: CGFloat = 3
    var strokeColor: Color = .black
    
    var radius: CGFloat = 16
    var padding: CGFloat = 16
    
    let onClick: () -> ()
    
    
    var body: some View {
        Button(text) {
            onClick()
        }
        .tint(tint)
        .frame(width: 180, height: 42)
        .overlay {
            RoundedRectangle(cornerRadius: radius, style: .continuous)
                    .stroke(strokeColor, lineWidth: strockWidth)
        }
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: radius, style: .continuous))
        .padding(.bottom, padding)
    }
}

#Preview {
    RoundedButton(text: "АУФ") {
        print("супер АУФ")
    }
}
