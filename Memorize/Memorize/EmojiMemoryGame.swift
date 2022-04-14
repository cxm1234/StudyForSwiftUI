//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by xiaoming on 2022/2/13.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    static let emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚞", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCard: 7) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }

    @Published private var model = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
