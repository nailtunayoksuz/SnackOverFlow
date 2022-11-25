//
//  NormalButton.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 24.11.2022.
//

import SwiftUI

struct NormalButton: View {
    var onTap : () -> Void
    var title: String
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack{
                Spacer()
                Text(title.locale())
                Spacer()
            }
            .tint(.white)
            .font(.system(size: FontSizes.headline,weight: .semibold))
            .padding(.all,PagePadding.All.normal.rawValue)
            
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.peach)
        .cornerRadius(RadiusItems.radius)
    }
}

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(onTap: {
            
        }, title: "Sample")
    }
}
