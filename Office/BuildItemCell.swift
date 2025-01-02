//
//  BuildItemCell.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/28/24.
//

import SwiftUI

struct BuildItemCell: View {
    @State var buildItem: BuildItemObject?
    var body: some View {
        VStack {
            Spacer()
            Text(buildItem?.title ?? "Test")
                .font(.headline)
            Spacer()
            Image(buildItem?.iconURL ?? "", bundle: nil)
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()
            
        }
    }
}

#Preview {
    BuildItemCell(buildItem: BuildItemObject(title: "Character", iconURL: "icon_hero"))
}


struct BuildItemObject: Hashable {
    var title: String
    var iconURL: String
}

let BuildItemArray: [BuildItemObject] = [
    BuildItemObject(title: "Character", iconURL: "icon_hero"),
    BuildItemObject(title: "Creature", iconURL: "icon_pegasus"),
    BuildItemObject(title: "Location", iconURL: "icon_continent"),
    BuildItemObject(title: "Calendar", iconURL: "icon_calendar"),
    BuildItemObject(title: "Timeline", iconURL: "icon_calendar"),
    BuildItemObject(title: "Event", iconURL: "icon_event")
]
