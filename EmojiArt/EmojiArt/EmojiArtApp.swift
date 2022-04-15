//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by xiaoming on 2022/4/15.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let doucument = EmojiArtDocument()
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: doucument)
        }
    }
}
