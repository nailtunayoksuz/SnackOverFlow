//
//  WelcomeView.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 23.11.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(Images.juice.rawValue)
                .resizable()
            Color.black.opacity(0.3)
            BodyView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .ignoresSafeArea()
    }
}


private struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Spacer()
                Image(Icons.appLogo.rawValue)
                Spacer()
                FacebookButton{}.padding(.top,40)
                GoogleButton {}
                AppleButton {}
                Divider()
                    .background(Color.peach)
                    .frame(
                        width: geometry.dw(width: 0.6),
                        height: DividerViewSize.normal
                    )
                    .padding(.all,PagePadding.All.normal.rawValue)
                
                EmailButton{ }
                Spacer().frame(height: geometry.dh(height: 0.1))
            }
            .padding(10)
        }
        
    }
}


