//
//  GuessTheWordGameModel.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 08.02.2022.
//

import Foundation

struct GuessTheWordGameModel {
    
    // MARK: - Initial conditions
    
    let askedWord: String
    let maximumMistakes: Int
    
    init(askedWord: String, maximumMistakes: Int) {
        self.askedWord = askedWord
        self.maximumMistakes = maximumMistakes
    }

    // MARK: - Сharacter conventions
    
    private static let nonHiddenCharacters = ["-", " "]
    private static let maskingCharacter = Character("_")

    // MARK: - Process support
    
    /// Letters choosen by the player.
    private(set) var alreadyChoosenLetters: [String] = Self.nonHiddenCharacters
    
    /// Memorizes the choosen letters and counts a mistake if it happens.
    /// - Parameter letter: The letter suggested by the player.
    mutating func choose(letter: String) {
        let lowercasedLetter = letter.lowercased()
        let lowercasedWord = askedWord.lowercased()
        alreadyChoosenLetters.append(lowercasedLetter)
        if !lowercasedWord.contains(Character(lowercasedLetter)) {
            numberOfMistakes += 1
        }
    }

    /// Shows correctly guessed letters in their places. Unknown letters are masked.
    var guessedResult: String {
        String(askedWord.map{ alreadyChoosenLetters.contains(String($0).lowercased()) ? $0 : Self.maskingCharacter })
    }
    
    private var numberOfMistakes = 0
    var howManyMistakesCanBeMade: Int {
        let remainder = maximumMistakes - numberOfMistakes
        return (remainder > 0) ? remainder : 0
    }
    
    // MARK: - Game status
    
    enum GameStatus {
        case keepPlaying
        case failure
        case victory
    }
    
    /// Still play, loss, win?
    var status: GameStatus {
        if numberOfMistakes > maximumMistakes {
            return .failure
        }
        if guessedResult.contains(Self.maskingCharacter) {
            return .keepPlaying
        } else {
            return .victory
        }
    }

}
