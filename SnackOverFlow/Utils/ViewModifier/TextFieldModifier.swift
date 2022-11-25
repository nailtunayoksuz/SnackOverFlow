//
//  TextFieldModifier.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 25.11.2022.
//

import Foundation
import SwiftUI

struct TextFieldModifier : ViewModifier{
    func body(content: Content) -> some View {
        content.padding()
        .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 2))
        .foregroundColor(.karl)
    }
    
    
}
