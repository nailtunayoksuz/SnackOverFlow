//
//  LoginView.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 25.11.2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            
            ImageItems.Authentication.login.rawValue.image()
            Text(LocalKeys.Login.welcomeBack.rawValue.locale())
                .font(.system(size: FontSizes.title1,weight: .semibold))
                .foregroundColor(.teflon)
            HTextIconField(hint: LocalKeys.General.emailhint.rawValue,iconName: IconItems.mail)
            HTextIconField(hint: LocalKeys.General.passwordhint.rawValue,iconName: IconItems.lock,isSecure: true)
                .padding(.top,PagePadding.All.normal.rawValue)
            Divider()
            NormalButton(onTap: {
                
            }, title: LocalKeys.Login.createAccount.rawValue)
            .padding(.top,PagePadding.All.normal.rawValue)
            Text(LocalKeys.Login.termsAndCondition.rawValue.locale())
                .environment(\.openURL, OpenURLAction(handler: { url in
                    return .discarded
                }))
                .font(.system(size: FontSizes.caption1,weight: .regular))
                .foregroundColor(.gandalf)
                .tint(.cornFlowerBlue)
                .padding(.top,PagePadding.All.normal.rawValue)
            Spacer()
        }.padding(.all,PagePadding.All.normal.rawValue)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


private struct HTextIconField: View {
    var hint: String
    let iconName: String
    var isSecure: Bool = false
    var body: some View {
        HStack {
            iconName.image()
            if !isSecure{
                TextField(hint.locale(), text: .constant(""))
            }else{
                SecureField(hint.locale(), text: .constant(""))
            }
            
        }
        .modifier(TextFieldModifier())
    }
}
