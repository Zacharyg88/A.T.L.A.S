//
//  ChatBubbleView.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/4/24.
//

import SwiftUI

struct ChatBubbleView: View {
    @State var message: ChatMessage
    
    var body: some View {
        HStack {
            if !message.isResponse {
                Spacer()
            }
            Text(message.text)
                .padding()
                .font(.custom("Roboto", size: 18))
                .foregroundStyle(Color.white)
                .background(
                    LinearGradient(gradient: Gradient(colors: message.isResponse ? [.plum, .royalty] : [.storm, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .cornerRadius(12)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .frame(maxWidth: 290)
            if message.isResponse {
                Spacer()
            }
        }
    }
}


struct ChatMessage: Identifiable {
    var id = UUID()
    var isResponse: Bool
    var text: String
}

//#Preview {
//    ChatBubbleView()
//}
