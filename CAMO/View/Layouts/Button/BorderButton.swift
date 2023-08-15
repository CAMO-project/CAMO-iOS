//
//  BorderButton.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/15.
//

import SwiftUI

struct BorderButton: View {
    var btnIcon: String
    var btnText: String
    
    var body: some View {
        VStack {
            Image(systemName: btnIcon)
                .environment(\.symbolVariants, .none)
                .font(.system(size: 24))
                .foregroundColor(Color("mainColor"))
                .padding(.bottom, 10)
            
            Text(btnText)
                .font(.system(size: 16))
                .foregroundColor(Color("mainColor"))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(Color("bgColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color("mainColor"), lineWidth: 2)
            
        )
    }
}

struct BorderButton_Previews: PreviewProvider {
    static var previews: some View {
        BorderButton(btnIcon: "book", btnText: "카페 정보")
    }
}
