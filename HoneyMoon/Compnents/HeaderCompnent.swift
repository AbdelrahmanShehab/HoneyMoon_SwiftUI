//
//  HeaderCompnents.swift
//  HoneyMoon
//
//  Created by Abdelrahman Shehab on 26/04/2023.
//

import SwiftUI

struct HeaderCompnent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundColor(Color.secondary)
                .opacity(0.4)
            
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        }
    }
}

struct HeaderCompnents_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCompnent()
            .previewLayout(.sizeThatFits)
    }
}
