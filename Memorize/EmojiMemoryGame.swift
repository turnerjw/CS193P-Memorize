//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Justin Turner on 2020-05-23.
//  Copyright © 2020 Justin Turner. All rights reserved.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🐬", "🌮", "✨", "🍑", "🎷"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5) ) { pairIndex in emojis[pairIndex] }
    }
        
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
