//
//  OrientationViewModifier.swift
//  OrientationDemo
//
//  Created by iOSDev on 10/8/23.
//

import Foundation
import SwiftUI

struct OrientaionViewModifier: ViewModifier {
    let action: (UIDeviceOrientation) -> ()

    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                action(UIDevice.current.orientation)
            }
    }
}

extension View {
    func onChangeOrientaion(perform action: @escaping (UIDeviceOrientation) -> ()) -> some View {
        self.modifier(OrientaionViewModifier(action: action))
    }
}
