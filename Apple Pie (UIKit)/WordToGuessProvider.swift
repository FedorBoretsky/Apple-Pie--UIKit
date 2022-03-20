//
//  WordToGuessProvider.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 05.03.2022.
//

struct WordToGuessProvider {
    
    private let collection: GuessingCollection
    
    mutating public func chooseNewWord() -> String {
        var candidate: GuessingCollection.WordToGuess
        
        // Find an element that hasn't been offered recently.
        repeat {
            candidate = collection.list.randomElement()!
        } while recentSelection.contains(candidate)
        
        // Update history.
        recentSelection.append(candidate)
        if recentSelection.count > recentSelectionMaxCount {
            recentSelection.removeFirst()
        }
        
        // Return the value for new game round.
        return candidate.word
    }
    
    public var currentWord: String {
        recentSelection.last!.word
    }
    
    public var currentInfo: String {
        recentSelection.last!.info
    }
    
    public var currentHint: String {
        recentSelection.last!.hint
    }
    
    public var hintTypeDescription: String {
        collection.hintTypeDescription
    }
    
    private var recentSelection: [GuessingCollection.WordToGuess] = []
    private let recentSelectionMaxCount: Int
    
    init(collection: GuessingCollection) {
        self.collection = collection
        recentSelectionMaxCount = min(10, collection.list.count / 2)
    }
    
}
