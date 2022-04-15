//
//  ContentView.swift
//  EmojiArt
//
//  Created by xiaoming on 2022/4/15.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    
    @ObservedObject var document: EmojiArtDocument
    
    let defaultEmojiFontSize: CGFloat = 40
    
    var body: some View {
        VStack(spacing: 0) {
            documentBody
            pallette
        }
    }
    
    var documentBody: some View {
        Color.yellow
    }
    
    var pallette: some View {
        ScrollingEmojisView(emojis: testemojis)
            .font(.system(size: defaultEmojiFontSize))
    }
    
    let testemojis = "🥲🙂🙃😝😜👋🤢👺💀👃👴👲👲👱👼👩‍🎤👴💼👓👨‍👩‍👧‍👦👕👣⛑💼"
}


struct ScrollingEmojisView: View {
    let emojis: String
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(emojis.map { String($0) }, id: \.self ) { emoji in
                    Text(emoji)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiArtDocumentView(document: EmojiArtDocument())
    }
}
