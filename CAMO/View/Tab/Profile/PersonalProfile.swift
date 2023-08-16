//
//  PersonalProfile.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/15.
//

import SwiftUI

struct PersonalProfile: View {
    var body: some View {
        VStack {
            Text("카페 사장님이신가요?")
            NavigationLink(destination: RegisterCafeView(), label: {
                BrownButton(labelText: "카페 등록하러 가기")
            })
        }
    }
}

struct PersonalProfile_Previews: PreviewProvider {
    static var previews: some View {
        PersonalProfile()
    }
}
