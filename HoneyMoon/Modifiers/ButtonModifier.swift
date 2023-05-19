//
//  ButtonModifier.swift
//  HoneyMoon
//
//  Created by Abdelrahman Shehab on 26/04/2023.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Capsule().fill(.pink))
            .foregroundColor(.white)
    }
}
