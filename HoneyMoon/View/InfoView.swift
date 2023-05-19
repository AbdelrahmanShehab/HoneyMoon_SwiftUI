//
//  InfoView.swift
//  HoneyMoon
//
//  Created by Abdelrahman Shehab on 26/04/2023.
//

import SwiftUI

struct InfoView: View {
    // MARK: -  PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: -  BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderCompnent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView()
                
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                CreditView()
                Spacer(minLength: 10)
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }

            }//: VSTACK
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 20)
        }//: SCROLL
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView(ItemOne: "Application", ItemTwo: "Honeymoon")
            RowAppInfoView(ItemOne: "Compatibility", ItemTwo: "iPhone and iPad")
            RowAppInfoView(ItemOne: "Developer", ItemTwo: "Shehab")
            RowAppInfoView(ItemOne: "Designer", ItemTwo: "Abdelrahman Shehab")
            RowAppInfoView(ItemOne: "Website", ItemTwo: "https://credo.academy")
            RowAppInfoView(ItemOne: "Version", ItemTwo: "1.5.0")
        }
    }
}

struct RowAppInfoView: View {
    var ItemOne: String
    var ItemTwo: String
    
    var body: some View {
        VStack{
            HStack{
                Text(ItemOne).foregroundColor(.gray)
                Spacer()
                Text(ItemTwo)
            }//: HSTACK
            Divider()
        }//: VSTACK
    }
}

struct CreditView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Photos").foregroundColor(.gray)
                Spacer()
                Text("Unsplash")
            }//: HSTACK
            Divider()
            Text("Photographers").foregroundColor(.gray)
            
            Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
                .multilineTextAlignment(.leading)
                .font(.footnote)
        }//: VSTACK
    }
}
