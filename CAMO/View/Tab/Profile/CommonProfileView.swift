//
//  CommonProfileView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/15.
//

import SwiftUI

struct CommonProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Image("CafeSampleImage1")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .clipShape(Circle())
                    .clipped() //프레임을 벗어나는 이미지 제거
                    .frame(width: 92)
                    .shadow(color: .gray.opacity(0.4), radius: 3, x: 0, y: 0)
                    .padding(.trailing, 8)
                VStack {
                    HStack {
                        Image("")
                            .resizable()
                            .aspectRatio(1.0, contentMode: .fit)
                            .clipped()
                            .frame(width: 32)
                            .background(.gray)
                        
                        Text("김공주")
                            .modifier(Title28Bold())
                        Text("님")
                            .font(.system(size: 24))
                        Spacer()
                        
                        NavigationLink(destination: SettingView(), label: {
                            Image(systemName: "gearshape")
                                .font(.system(size: 24))
                                .foregroundColor(Color("mainColor"))
                        })
                    }
                    NavigationLink(destination: EditProfileView(), label: {
                        VStack {
                            IconTextLabel(labelIcon: "pencil", labelText: "프로필 수정")
                                .padding(10)
                        }
                        .modifier(WhiteBox())
                    })
                    
                }
            }
        }
    }
}

struct CommonProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CommonProfileView()
    }
}
