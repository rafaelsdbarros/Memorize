//
//  ContentView.swift
//  Memorize
//
//  Created by Rafael on 24/04/23.
//

import SwiftUI

struct ContentView: View {
    let emojiMemoryViewModel: EmojiMemoryGameViewModel
    var body: some View {
        HStack{
            ForEach(emojiMemoryViewModel.cards) { card in
                CardView(card: card).onTapGesture{
                    print(emojiMemoryViewModel.choose(card: card))
                }
            }
        }
        .padding()
        .foregroundColor(.orange)
                
    }
}

struct CardView: View {
    var card: MemorizeGameModel<String>.Card
    
    var body: some View {
        ZStack{
            if card.isFaceup {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke()
                Text(card.content)
            }else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(emojiMemoryViewModel: EmojiMemoryGameViewModel())
    }
}
