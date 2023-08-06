//
//  WhiteButton.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/06.
//

import SwiftUI

struct WhiteButton: View {
    @Binding var isActive: Bool
    @Binding var buttonText: String
    
    var body: some View {
        Button {
            isActive.toggle()
        } label: {
            Text("\(buttonText)")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(Color("mainColor"))
        }
        .padding(10)
        .background(Color("bgColor"))
        .cornerRadius(10)
        .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 0)
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        WhiteButton(isActive: .constant(false), buttonText: .constant("버튼"))
    }
}
