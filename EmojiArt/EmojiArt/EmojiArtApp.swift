//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by xiaoming on 2022/4/15.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    @StateObject var doucument = EmojiArtDocument()
    @StateObject var paletteStrore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: doucument)
                .environmentObject(paletteStrore)
        }
    }
}
