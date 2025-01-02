//
//  ContentView.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/3/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var isLoggedIn = false
    var body: some View {
        Group {
            if !isLoggedIn {
                ZStack {
                    Color("Royalty")
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        Text("A.T.L.A.S")
                            .font(.custom("Roboto", size: 45))
                            .foregroundStyle(Color.white)
                        Button {
                            isLoggedIn.toggle()
                        } label: {
                            Text("Enter")
                        }
                        .frame(width: 75, height: 45)
                        .background(Color.gray)
                        .cornerRadius(12)
                        .tint(Color.white)
                        Spacer()
                    }
                }
            }
            else {
                NavigationStack {
                    MainView()
                }
            }
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
