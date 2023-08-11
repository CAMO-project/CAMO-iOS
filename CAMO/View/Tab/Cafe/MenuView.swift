//
//  MenuView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/08.
//

import SwiftUI

struct MenuView: View {
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            VStack {
                Text("대표메뉴")
                    .modifier(Title24BoldMain())
                    .padding(.top, 30)
                
                LazyVGrid(columns: columns) {
                    ForEach((0...1), id: \.self) { _ in
                        NavigationLink {
                            MenuView()
                        } label: {
                            MenuRow()
                        }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, 10)
            }
            .background(Color("mainLightColor"))
            
            Text("전체메뉴")
                .modifier(Title24BoldMain())
                .padding(.top, 30)
            
            LazyVGrid(columns: columns) {
                ForEach((0...6), id: \.self) { _ in
                    NavigationLink {
                        MenuView()
                    } label: {
                        MenuRow()
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            .padding(.bottom, 10)
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
