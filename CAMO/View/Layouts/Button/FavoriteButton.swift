//
//  FavoriteButton.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/11.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart.fill")
                .font(.system(size: 16))
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? Color("redPointColor") : Color("lightGrayColor"))
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(false))
    }
}
