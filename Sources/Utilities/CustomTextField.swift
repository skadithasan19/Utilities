//
//  CustomTextField.swift
//  OneLinkHomeSwiftUI
//
//  Created by Hasan, MdAdit on 2/25/20.
//  Copyright © 2020 Hasan, MdAdit. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
public struct CustomTextField: View {
    var leadingSystemIcon: String
    var placeHolder: String
    @Binding var value: String
    var editingChanged:((Bool)-> Void)

    
    public init(leadingSystemIcon:String,placeHolder:String, value:Binding<String>, editingChanged:@escaping ((Bool) -> Void)) {
        self.leadingSystemIcon = leadingSystemIcon
        self.placeHolder = placeHolder
        self._value = value
        self.editingChanged = editingChanged
    }
    
    public var body: some View {
        VStack {
            HStack(spacing:10.0){
                Image(systemName: leadingSystemIcon)
                    .foregroundColor(Color.gray)
                    .frame(width:15)
                TextField(self.placeHolder, text: $value, onEditingChanged: editingChanged)
            }
            Rectangle().frame(height: 1.0)
                .padding(.horizontal, 1).foregroundColor(Color.gray)
        }      .padding(.leading, 30)
            .padding(.trailing, 30)
    }
}
 
