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
    let paletteStrore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: doucument)
        }
    }
}
