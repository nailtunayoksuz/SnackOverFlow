//
//  AppleButton.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 23.11.2022.
//

import SwiftUI

struct AppleButton: View {
    var onTap : () -> Void
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack{
                Image(IconItems.Social.apple.rawValue)
                Text(LocalKeys.Auth.apple.rawValue.locale())
                Spacer()
            }
            .tint(.white)
            .font(.title2)
            .padding(.all,PagePadding.All.normal.rawValue)
            
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.black)
        .cornerRadius(RadiusItems.radius)
    }
}

struct AppleButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleButton{}
    }
}
