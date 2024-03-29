//
//  ProfileView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/05.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            CommonProfileView()
            
            // QR 아래 부분
            // 사장회원 => OwnerProfile
            // 일반회원 => PersonalProfile
            // 회원아님 => LandingLogin
            PersonalProfile()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
