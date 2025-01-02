//
//  AtlasChat.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/4/24.
//

import SwiftUI

struct AtlasChat: View {
    @State private var textInput: String = ""
    @State var chatHistory: [ChatMessage]
    @State private var keyboardHeight: CGFloat = 0
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(chatHistory) { message in
                        ChatBubbleView(message: message)
                            .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
                        
                    }
                }
            }
            HStack {
                TextField("Ask A.T.L.A.S. anything!", text: $textInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading)
                Button {
                    guard !textInput.isEmpty else  { return }
                    let newMessage: ChatMessage = ChatMessage(id: UUID(), isResponse: false, text: textInput)
                    chatHistory.append(newMessage)
                    textInput = ""
                } label: {
                    ZStack {
                        Circle()
                            .fill(.black)
                        Text("?")
                            .font(.custom("Roboto", size: 18))
                            .foregroundStyle(.white)
                    }
                    .frame(width: 24, height: 24)
                    .padding(.trailing)
                }

            }
            .background(Color.white)
            .offset(y: -keyboardHeight)
            //.animation(.easeOut(duration: 0.25), value: keyboardHeight)
        }
        .onAppear(perform: addKeyboardObservers)
        .onDisappear(perform: removeKeyboardObservers)
    }
    
    
    func addKeyboardObservers() {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
            if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
                let window = UIApplication.shared.windows.first
                let safeAreaInset = window?.safeAreaInsets.bottom ?? 0
                self.keyboardHeight = keyboardFrame.height - safeAreaInset
            }
        }
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { _ in
            self.keyboardHeight = 0
        }
    }

    // Remove keyboard notifications
    func removeKeyboardObservers() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
}




#Preview {
    AtlasChat(chatHistory: mockChat)
}



var mockChat = [
    ChatMessage(isResponse: false, text: "Hello! How does this work?"),
    ChatMessage(isResponse: true, text: "Hello! My name is Automated Thematic Logistics and Archival System, but you can call me A.T.L.A.S. I'm here to facilitate you in your efforts in World Building, Creative Writing, and Lore Creation. Ask me anything about how to get started or anything else!"),
    ChatMessage(isResponse: false, text: "Wow, this is so cool!")
]
