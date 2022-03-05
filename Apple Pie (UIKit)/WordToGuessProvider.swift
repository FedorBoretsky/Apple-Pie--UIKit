//
//  WordToGuessProvider.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 05.03.2022.
//

struct WordToGuessProvider {
    
    mutating public func selectNewCapital() -> String {
        var candidate: WordToGuess
        
        // Find a city that hasn't been offered recently.
        repeat {
            candidate = Capitals.list.randomElement()!
        } while recentSelection.contains(candidate)
        
        // Update history.
        recentSelection.append(candidate)
        if recentSelection.count > recentSelectionMaxCount {
            recentSelection.removeFirst()
        }
        
        // Return the value needed to start a new game round.
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
    
    private var recentSelection: [WordToGuess] = []
    private let recentSelectionMaxCount = min(10, Capitals.list.count / 2)
    
}
