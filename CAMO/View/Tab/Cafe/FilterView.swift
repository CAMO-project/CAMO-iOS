//
//  FilterView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/06.
//

import SwiftUI

struct FilterView: View {
    
    @State private var selected = 1
    
    var body: some View {
        VStack {
            Picker(selection: $selected, label: Text("정렬")) {
                Text("별점순").tag(1)
                Text("거리순").tag(2)
                Text("좋아요순").tag(3)
            }
            .padding(2)
            .background(Color("bgColor"))
            .cornerRadius(10)
            .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 0)
            
        }

    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
