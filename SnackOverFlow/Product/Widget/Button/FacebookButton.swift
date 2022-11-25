//
//  FacebookButton.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 23.11.2022.
//

import SwiftUI
struct FacebookButton: View {
    var onTap : () -> Void
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack{
                Image(IconItems.Social.facebook.rawValue)
                Text(LocalKeys.Auth.facebook.rawValue.locale())
                Spacer()
            }
            .tint(.white)
            .font(.title2)
            .padding(.all,PagePadding.All.normal.rawValue)
            
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.deepSkyBlue)
        .cornerRadius(RadiusItems.radius)
    }
}

struct Facebookbutton_Previews: PreviewProvider {
    static var previews: some View {
        FacebookButton(onTap: {})
    }
}
