//
//  RateAndFavorite.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/06.
//

import SwiftUI

struct RateAndFavorite: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .environment(\.symbolVariants, .none)
                .font(.system(size: 14))
                .foregroundColor(.orange)
            
            Text("5.0")
                .font(.system(size: 14))
                .foregroundColor(.gray)
            
            Image(systemName: "heart.fill")
                .environment(\.symbolVariants, .none)
                .font(.system(size: 14))
                .foregroundColor(.red)
            
            Text("20,332")
                .font(.system(size: 14))
                .foregroundColor(.gray)
        }
        
        
    }
}

struct RateAndFavorite_Previews: PreviewProvider {
    static var previews: some View {
        RateAndFavorite()
    }
}
