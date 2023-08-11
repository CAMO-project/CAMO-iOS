//
//  Stars.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/10.
//

import SwiftUI

struct Stars: View {
    
    let fillStar: Int
    let maxStar: Int = 5
    
    
    var body: some View {
        HStack {
            ForEach(0..<fillStar) { _ in
                Image(systemName: "star.fill")
                    .environment(\.symbolVariants, .none)
                    .foregroundColor(.yellow)
                    .font(.system(size: 20))
                    .padding(.horizontal, -5)
            }
            ForEach(0..<(maxStar-fillStar)) { _ in
                Image(systemName: "star")
                    .environment(\.symbolVariants, .none)
                    .foregroundColor(.yellow)
                    .font(.system(size: 20))
                    .padding(.horizontal, -5)
            }
        }


    }
}

struct Stars_Previews: PreviewProvider {
    static var previews: some View {
        Stars(fillStar: Int(2.3))
    }
}
