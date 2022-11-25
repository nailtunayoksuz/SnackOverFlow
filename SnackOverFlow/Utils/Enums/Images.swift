//
//  Images.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 23.11.2022.
//

import Foundation
import SwiftUI
enum Images : String {
    case juice = "img_juice"
}

struct ImageItems  {
    enum Authentication : String{
        case login = "wolcano"
    }
}

extension String{
    /// String Path to image
    /// - Returns: related image from image asset
    func image() -> Image {
        return Image(self)
    }
}
