//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Rafael on 24/04/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(emojiMemoryViewModel: EmojiMemoryGameViewModel())
        }
    }
}
