//
//  BuildObjectView.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/28/24.
//

import SwiftUI

struct BuildObjectView: View {
    @State var buildObject: BuildItemObject?
    var body: some View {
        Text(buildObject?.title ?? "")
    }
}

#Preview {
    BuildObjectView()
}
