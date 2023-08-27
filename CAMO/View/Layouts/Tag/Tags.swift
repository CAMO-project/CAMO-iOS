//
//  Tags.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/07.
//

import SwiftUI

struct Tags: View {
    
    @Binding var tagName: String
    
    var body: some View {
        VStack {
            Text(tagName)
                .padding(.vertical, 6)
                .padding(.horizontal, 20)
        }
        .background(Color("bgColor"))
        .border(Color.black.opacity(0), width: 0)
        .cornerRadius(100)
        .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 0)
        .padding(.bottom, 2)
        .padding(.trailing, 2)
    }
}

struct Tags_Previews: PreviewProvider {
    static var previews: some View {
        Tags(tagName: .constant("감성 좋은 카페"))
    }
}

