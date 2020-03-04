//
//  ActivityIndicatorSmall.swift
//  OneLinkHomeSwiftUI
//
//  Created by Hasan, MdAdit on 2/28/20.
//  Copyright © 2020 Hasan, MdAdit. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
public struct ActivityIndicatorSmall: UIViewRepresentable {
    @Binding var shouldAnimate: Bool
    
    public init(animate:Binding<Bool>) {
        self._shouldAnimate = animate
    }
    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }

    public func updateUIView(_ uiView: UIActivityIndicatorView,
                      context: Context) {
        if self.shouldAnimate {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
 
