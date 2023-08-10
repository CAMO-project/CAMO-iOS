//
//  BrownButton.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/10.
//

import SwiftUI

struct BrownButton: View {
    
    var labelText: String
    var labelIcon: String
    
    var body: some View {
        
        // LightMode: Brown, DarkMode: LightPink
        VStack {
            Label {
                Text(labelText)
            } icon : {
                Image(systemName: labelIcon)
                    .environment(\.symbolVariants, .none)
            }
            .font(.system(size: 20))
            .foregroundColor(Color("bgColor"))
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
        }
        .background(Color("mainColor"))
        .cornerRadius(20)
        .padding(30)
    }
}

struct BrownButton_Previews: PreviewProvider {
    static var previews: some View {
        BrownButton(labelText: "버튼", labelIcon: "star")
    }
}
