//
//  HeaderView.swift
//  HoneyMoon
//
//  Created by Abdelrahman Shehab on 26/04/2023.
//

import SwiftUI

struct HeaderView: View {
    // MARK: -  PROPERTIES
    @Binding var showGuidView: Bool
    @Binding var showInfoView: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {

            Button {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showInfoView.toggle()
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(.primary)
            .sheet(isPresented: $showInfoView) {
                InfoView()
            }

            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showGuidView.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }//: BUTTON
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuidView) {
                GuideView()
            }

        }//: HSTACK
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    
    static var previews: some View {
        HeaderView(showGuidView: $showGuide, showInfoView: $showInfo)
            .previewLayout(.sizeThatFits)
    }
}
