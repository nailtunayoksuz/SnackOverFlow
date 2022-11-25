//
//  LocalKeys.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 23.11.2022.
//

import SwiftUI
struct LocalKeys {
    enum Auth : String{
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case custom = "signUpWithEmail"
    }
    
    enum Buttons : String {
        case getStarted = "getStarted"
    }
    enum General : String {
        case emailhint = "emailhint"
        case passwordhint = "passwordhint"
    }
    enum Login : String {
        case welcomeBack = "welcomeBack"
        case createAccount = "createAccount"
        case termsAndCondition = "termsAndCondition"
    }
}
extension String {
    /// it localize any strings from Localizable.strings
    /// - Returns: Localized Value
    func locale() -> LocalizedStringKey{
        return LocalizedStringKey(self)
    }
}
