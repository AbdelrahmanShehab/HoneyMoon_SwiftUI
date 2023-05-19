//
//  TitleModifier.swift
//  HoneyMoon
//
//  Created by Abdelrahman Shehab on 26/04/2023.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}
