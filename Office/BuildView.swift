//
//  BuildView.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/4/24.
//

import SwiftUI

struct BuildView: View {
    let items = BuildItemArray
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        VStack {
            Text("What do you want to build?")
                .font(.title)
            Spacer()
            NavigationStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(items, id: \.self) { item in
                            NavigationLink(destination: BuildObjectView(buildObject: item)) {
                                BuildItemCell(buildItem: item)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .aspectRatio(1, contentMode: .fit)
                                    .background(Color("Plum"))
                                    .cornerRadius(12)
                            }
                            }
                        }
                        .padding()
                }
            }
        }
    }
    
    func didSelectCell(item: BuildItemObject) {
        
    }
}

#Preview {
    BuildView()
}
