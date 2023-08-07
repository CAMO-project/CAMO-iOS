//
//  CafeListView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/06.
//

import SwiftUI

struct CafeListView: View {
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach((0...14), id: \.self) { _ in
                    NavigationLink {
                        CafeDetailView()
                    } label: {
                        CafeRow()
                    }
                    
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
    }
}

struct CafeListView_Previews: PreviewProvider {
    static var previews: some View {
        CafeListView()
    }
}
