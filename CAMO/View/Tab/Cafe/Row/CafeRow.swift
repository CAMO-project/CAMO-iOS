//
//  CafeRow.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/06.
//

import SwiftUI

struct CafeRow: View {
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        VStack {
            // cafe image
            Image("CafeSampleImage1")
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .clipped()
                .cornerRadius(10)
                .frame(width: UIScreen.main.bounds.size.width/2-30)
                .padding(.bottom, 1)
            
            // cafe info
            VStack (alignment: .leading) {
                Text("카페 베이그")
                    .padding(.bottom, 1)
                    .modifier(Title16Bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("충청남도 천안시")
                    .padding(.bottom, 8)
                    .modifier(Body14Gray())
                
                RateAndFavorite()
                    .padding(.bottom, 1)
                
            }
            .padding(.leading, 10)
            .padding(.bottom, 10)
            
        }
        .frame(width: UIScreen.main.bounds.size.width/2-30)
        .background(Color("bgColor"))
        .border(Color.black.opacity(0), width: 0)
        .cornerRadius(10)
        .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 0)
        .padding(.horizontal, 10)
        .padding(.bottom, 20)

    }
}

struct CafeRow_Previews: PreviewProvider {
    static var previews: some View {
        CafeRow()
    }
}
