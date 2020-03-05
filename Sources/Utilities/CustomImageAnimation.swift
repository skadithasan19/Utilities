//
//  CustomImageAnimation.swift
//  OneLinkHomeSwiftUI
//
//  Created by Hasan, MdAdit on 3/5/20.
//  Copyright © 2020 Hasan, MdAdit. All rights reserved.
//

import SwiftUI
  
@available(iOS 13.0, *)
public struct CustomImageAnimation: UIViewRepresentable {
    
    private var imageNames: [String]
    
    private var animationTimer = 0.0
    
    public init(imageNames:[String], animationTime:Double = 2.0) {
        self.imageNames = imageNames
        self.animationTimer = animationTime
    }
    
    public func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: CGRect.zero)
        let animationView = UIImageView(frame: CGRect.zero)
        animationView.contentMode = .scaleAspectFit
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        return view
    }
    
    public func updateUIView(_ uiView: UIView, context: Context) {
        guard let imgView = uiView.subviews.first as? UIImageView else { return }
        imgView.animationImages = self.imageNames.compactMap({ UIImage(named: $0) })
        imgView.animationDuration = animationTimer
        imgView.startAnimating()
    }
}

