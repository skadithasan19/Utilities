//
//  HTextAndButton.swift
//  OneLinkHomeSwiftUI
//
//  Created by Hasan, MdAdit on 2/25/20.
//  Copyright © 2020 Hasan, MdAdit. All rights reserved.
//

import SwiftUI
@available(iOS 13.0, *)
public struct HTextAndButton: View {
    
    var text: String
    var buttonTitle: String
    var fontSize: CGFloat
    
    var buttonAction: () -> Void
    
    public var body: some View {
        HStack {
            Text(text)
                .font(Font.custom("Helvetica", size: fontSize))
                .foregroundColor(Color.gray)
            Button(action: buttonAction) {
                Text(buttonTitle)
                    .font(Font.custom("Helvetica", size: fontSize))
            }.foregroundColor(.red)
        }
    }
}
 
