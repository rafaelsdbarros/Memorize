//
//  EmojiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Rafael on 03/05/23.
//

import SwiftUI

class EmojiMemoryGameViewModel {
    private var memoryGameModel: MemorizeGameModel<String> = EmojiMemoryGameViewModel.createMemoryGame()
    
    private static func createMemoryGame() -> MemorizeGameModel<String> {
        let emojis: Array<String> = ["👻", "🎃", "☠️","👺"]
        return MemorizeGameModel(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: Access to the Model
    var cards: Array<MemorizeGameModel<String>.Card> {
        memoryGameModel.cards
    }
    
    //MARK: Methods
    func choose(card: MemorizeGameModel<String>.Card){
        memoryGameModel.choose(card: card)
    }
}
