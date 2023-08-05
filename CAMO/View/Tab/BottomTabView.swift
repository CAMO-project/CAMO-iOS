//
//  BottomTabView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/04.
//

import SwiftUI
import Foundation

struct BottomTabView: View {
    private enum Tabs {
        case Home, Cafe, Coupon, Profile
    }

    @State private var selectedTab: Tabs = .Home

    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()

//        UITabBar.appearance().backgroundColor = UIColor(Color("bgMainColor"))
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag(Tabs.Home)
                .tabItem({
                    Image(systemName: "house.fill")
                        .environment(\.symbolVariants, .none)
                    Text("Home")
                })
            CafeView()
                .tag(Tabs.Cafe)
                .tabItem {
                    Image(systemName: "cup.and.saucer.fill")
                        .environment(\.symbolVariants, .none)
                    Text("Cafe")
                }
            CouponView()
                .tag(Tabs.Coupon)
                .tabItem {
                    Image(systemName: "heart.circle")
                        .environment(\.symbolVariants, .none)
                    Text("Coupon")
                }
            ProfileView()
                .tag(Tabs.Profile)
                .tabItem {
                    Image(systemName: "person.crop.circle")
                        .environment(\.symbolVariants, .none)
                    Text("My")
                }
        }
        .accentColor(Color("mainColor"))
//        .onAppear() {
//        checkCameraPermission()
//        checkAlbumPermission()
//        }
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
