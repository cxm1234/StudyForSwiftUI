//
//  MemorizeApp.swift
//  Memorize
//
//  Created by xiaoming on 2022/2/8.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
