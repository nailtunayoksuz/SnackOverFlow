//
//  DynamicSize + GeometryProxy.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 23.11.2022.
//

import SwiftUI
extension GeometryProxy{
    /// Dynamic height for device
    /// - Parameter height: Percent Value
    /// - Returns: Calculated value for device height
    func dh(height: Double) -> Double{
        return size.height * height
    }
    /// Dynamic width for device
    /// - Parameter width: Percent Value
    /// - Returns: Calculated value for device width
    func dw(width: Double) -> Double{
        return size.width * width
    }
}
