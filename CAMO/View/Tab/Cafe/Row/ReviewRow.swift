//
//  ReviewRow.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/10.
//

import SwiftUI

struct ReviewRow: View {
    var body: some View {
        VStack {
            HStack {
                Image("CafeSampleImage1")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .clipShape(Circle())
                    .clipped() //프레임을 벗어나는 이미지 제거
                    .frame(width: 52)
                    .shadow(color: .gray.opacity(0.4), radius: 3, x: 0, y: 0)
                    .padding(.trailing, 8)
                
                VStack(alignment: .leading) {
                    Text("김공주")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .padding(.bottom, 1)
                    
                    HStack {
                        Stars(fillStar: Int(4.0))
                            .padding(.trailing, 20)
                        
                        Text("|  2023.03.05.")
                            .modifier(Body16Gray())
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 20)
            
            Text("여기 편하고 좋아요! 커피가 맛있어요 여기 편하고 좋아요! 커피가 맛있어요 여기 편하고 좋아요! 커피가 맛있어요 여기 편하고 좋아요! 커피가 맛있어요 여기 편하고 좋아요! 커피가 맛있어요 여기 편하고 좋아요! 커피가 맛있어요")
                .font(.system(size: 16))
                .lineSpacing(6)
                .foregroundColor(Color("darkGrayColor"))
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            
            Divider()
                .padding(.vertical, 20)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ReviewRow_Previews: PreviewProvider {
    static var previews: some View {
        ReviewRow()
    }
}
