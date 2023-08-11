//
//  IconTextLabel.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/07.
//

import SwiftUI

struct IconTextLabel: View {
    
    @Binding var labelIcon: String
    @Binding var labelText: String
    
    var body: some View {
        Label {
            Text(labelText)
                .multilineTextAlignment(.leading)
                .lineSpacing(6)
                .foregroundColor(Color("mainColor"))
        } icon : {
            Image(systemName: labelIcon)
                .environment(\.symbolVariants, .none)
                .foregroundColor(Color("mainColor"))
        }
        .font(.system(size: 16))
    }
}

struct IconTextLabel_Previews: PreviewProvider {
    static var previews: some View {
        IconTextLabel(labelIcon: .constant("map"), labelText: .constant("hello"))
    }
}
