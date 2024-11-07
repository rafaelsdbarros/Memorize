//
//  MemorizeGameModel.swift
//  Memorize
//
//  Created by Rafael on 03/05/23.
//

import Foundation
struct MemorizeGameModel<ContentCard> {
    var cards: Array<Card>
    
    init(numberOfPairOfCards: Int, contentCardFactory: (Int) -> ContentCard ){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards{
            let content = contentCardFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    struct Card: Identifiable {
        var isFaceup = true
        var isMatched = false
        var content: ContentCard
        let id: Int
    }
}
