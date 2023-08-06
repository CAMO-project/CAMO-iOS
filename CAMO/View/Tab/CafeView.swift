//
//  CafeView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/05.
//

import SwiftUI

struct CafeView: View {
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("mainColor"))
        UISegmentedControl.appearance().backgroundColor = .white
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    @State private var selectedSide: ListAndMap = .list_view
    
    @State var isActiveFilter: Bool = false
    
    var body: some View {
        VStack{
            
            SearchBar()
            
            ScrollView {
                // Buttons
                HStack {
                    // segmented control
                    Picker("Choose a Side", selection: $selectedSide) {
                        ForEach(ListAndMap.allCases, id: \.self) {
                            Image(systemName: String($0.rawValue))
                                .environment(\.symbolVariants, .none)
                                .imageScale(.medium)
                                .foregroundColor(Color("mainColor"))
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                .padding(.horizontal, 30)
                
                HStack {
                    // text : 총 x건의 검색 결과
                    Text("총 12345건의 검색 결과")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                    Spacer()
                    
                    // filter Buttons
                    WhiteButton(isActive: $isActiveFilter, buttonText: .constant("태그"))
                        .sheet(isPresented: $isActiveFilter) {
                            FilterView()
                        }
                    
                    WhiteButton(isActive: $isActiveFilter, buttonText: .constant("추천순"))
                        .sheet(isPresented: $isActiveFilter) {
                            FilterView()
                        }
                }
//                .frame(width: .infinity)
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                
                switch selectedSide {
                case .list_view:
                    CafeListView()
                case .map_view:
                    CafeMapView()
                }
                Spacer()
            }
        }

    }
}

struct CafeView_Previews: PreviewProvider {
    static var previews: some View {
        CafeView()
    }
}
