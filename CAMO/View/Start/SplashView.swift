//
//  SwiftUIView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/04.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                StartView()
            } else {
                ZStack {
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
                            .padding(.top, 60)
                            
                        
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("GreenColor"))
            }
        }
        .background(Color("mainDarkColor"))
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
        
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
