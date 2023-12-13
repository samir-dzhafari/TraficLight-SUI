//
//  View + fullWidth.swift
//  TraficLight-SUI
//
//  Created by Самир Джафари on 13.12.2023.
//

import SwiftUI

extension View {
    func fullWidth() -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
