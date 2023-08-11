//
//  MenuRow.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/08.
//

import SwiftUI

struct MenuRow: View {
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
                Text("파인애플 주스")
                    .padding(.bottom, 1)
                    .modifier(Body14Gray())
                
                Text("2,500원")
                    .padding(.bottom, 1)
                    .modifier(Title16Bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                
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

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
