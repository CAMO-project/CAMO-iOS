//
//  SearchBar.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/06.
//

import SwiftUI

struct SearchBar: View {
    
    @State var inputSearch: String = ""
    
    var body: some View {
        HStack {
            TextField("검색", text: $inputSearch)
                .padding(.leading, 20)
                .padding(.vertical, 10)
                .font(.system(size: 16))
                .textInputAutocapitalization(.never)
            Image(systemName: "magnifyingglass")
                .environment(\.symbolVariants, .none)
                .imageScale(.medium)
                .foregroundColor(Color("mainColor"))
                .padding(.trailing, 20)
                .padding(.vertical, 10)
                .onTapGesture {
                    if inputSearch != "" {
                        // 카페 검색
                    } else {
                        // 전체 카페 리스트
                    }
                }
        } // hstack
        .frame(maxWidth: .infinity)
        .background(Color("bgColor"))
        .border(Color.black.opacity(0), width: 0)
        .cornerRadius(10)
        .padding(30)
        .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 0)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
