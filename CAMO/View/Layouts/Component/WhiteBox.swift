//
//  WhiteBox.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/07.
//

import SwiftUI

struct WhiteBox: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .background(Color("bgColor"))
            .border(Color.black.opacity(0), width: 0)
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 0)
    }
}

