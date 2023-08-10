//
//  StartView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/04.
//

import SwiftUI

struct StartView: View {
    
    var body: some View {
        
        NavigationView {
            VStack {
                Image("camoTitle")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .clipped()
                    .padding(.horizontal, 80)
                
                Image("camoAppIcon")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .clipped() //프레임을 벗어나는 이미지 제거
                    .padding(.horizontal, 80)

                    
                NavigationLink(destination: BottomTabView().navigationBarHidden(true), label:{
                    VStack {
                        Text("CAMO 앱 시작하기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainDarkColor"))
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical, 20)
                    .background(.white)
                    .cornerRadius(20)
                })
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 30)
                .padding(.vertical, 60)
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("mainDarkColor"))
            .navigationBarHidden(true)
    
            
        } // navigationView
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
