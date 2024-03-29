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
                    
                    // tag Button
                    Button(action: {
                        isActiveFilter.toggle()
                    }, label: {
                        WhiteButton(buttonText: "태그")
                    })
                    .sheet(isPresented: $isActiveFilter) {
                        TagView()
                    }
                    
                    // filter button
                    FilterView()
                }
//                .frame(width: .infinity)
                .padding(.horizontal, 30)
                .padding(.top, 20)
                
                switch selectedSide {
                case .list_view:
                    CafeListView()
                case .map_view:
                    CafeMapView()
                }
                Spacer()
            }
        }
        .onAppear (perform : UIApplication.shared.hideKeyboard)

    }
}

struct CafeView_Previews: PreviewProvider {
    static var previews: some View {
        CafeView()
    }
}
