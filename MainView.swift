//
//  MainView.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/4/24.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: Int = 2
    
    var body: some View {
        VStack {
            TabContent(selectedTab: selectedTab)
            HStack {
                Spacer()
                CustomTabBarItem(index: 0, icon: "icon_map", title: "Map", isSelected: selectedTab == 0) {
                    selectedTab = 0
                }
                Spacer()
                CustomTabBarItem(index: 1, icon: "icon_library", title: "Library", isSelected: selectedTab == 1) {
                    selectedTab = 1
                }
                Spacer()
                CustomTabBarItem(index: 2, icon: "", title: "A.T.L.A.S", isSelected: selectedTab == 2) {
                    selectedTab = 2
                }
                Spacer()
                CustomTabBarItem(index: 3, icon: "icon_quill", title: "Create", isSelected: selectedTab == 3) {
                    selectedTab = 3
                }
                Spacer()
                CustomTabBarItem(index: 4, icon: "icon_avatar", title: "Profile", isSelected: selectedTab == 4) {
                    selectedTab = 4
                }
                Spacer()
            }
        }
        .background(Color.white)
        .ignoresSafeArea(.keyboard)
    }
}

struct TabContent: View {
    let selectedTab: Int
    
    
    var body: some View {
        Group {
            switch selectedTab {
            case 0:
                MapView()
            case 1:
                LibraryView()
            case 2:
                AtlasChat(chatHistory: mockChat)
            case 3:
                BuildView()
            default:
                ProfileView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct CustomTabBarItem: View {
    let index: Int
    let icon: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        ZStack {
            if index == 2 {
                Circle()
                    .fill(Color("Royalty"))
                    .frame(width: getSize(), height: getSize())
            }
            VStack {
                Image(icon)
                    .foregroundStyle(isSelected ? .black : .gray)
                Text(title)
                    .font(.custom("Roboto", size: 10))
                    .foregroundStyle(getColor())
            }
        }
        .frame(width: getSize(), height: getSize())
        .onTapGesture {
            action()
        }
    }
    
    func getSize() -> CGFloat {
        if index != 2 {
            return 32
        }else {
            return 76
        }
    }
    
    func getColor() -> Color {
        if index == 2 {
            if isSelected {
                return Color.white
            }else {
                return Color.white.opacity(0.5)
            }
        }else {
            if isSelected {
                return Color("Royalty")
            }else {
                return Color.gray
            }
        }
    }
}

#Preview {
    MainView()
}
