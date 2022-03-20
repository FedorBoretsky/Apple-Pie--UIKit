//
//  GuessingCollection.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 16.03.2022.
//

struct GuessingCollection {
    
    struct WordToGuess: Equatable {
        let word: String
        let info: String
        let hint: String
    }
    
    let hintTypeDescription: String
    let list: [WordToGuess]
}

