//
//  ViewController.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 06.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var resourcesImage: UIImageView!
    @IBOutlet weak var guessedWordLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var gameStatsLabel: UILabel!
    
    // MARK: - Controller
    
    var game: GuessTheWordGameModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessedWordLabel.font = UIFont.monospacedSystemFont(ofSize: 30, weight: .black)
        newRound()
        updateUI()
    }
        
    func newRound() {
        game = GuessTheWordGameModel(askedWord: "Ниагара Дрим", maximumMistakes: 7)
    }
    
    // MARK: - Update
    
    func updateUI() {
        resourcesImage.image = UIImage(named: "Tree \(game.howManyMistakesCanBeMade)")
        guessedWordLabel.text = game.guessedResult
        updateLetterButtons()
    }
        
    func updateLetterButtons() {
        for button in letterButtons {
            let letter = button.titleLabel?.text ?? " "
            let isAlreadyChoosen = game.alreadyChoosenLetters.contains(letter.lowercased())
            if isAlreadyChoosen {
                button.isEnabled = false
                button.setTitleColor(Self.disabledButtonColor, for: .disabled)
                button.titleLabel?.font = Self.disabledButtonFont
            } else {
                button.isEnabled = true
                button.setTitleColor(Self.activeButtonColor, for: .disabled)
                button.titleLabel?.font = Self.activeButtonFont
            }
        }
    }
    
    // MARK: - Button style constants
    
    private static let buttonFontSize: CGFloat = 16
    private static let activeButtonColor = #colorLiteral(red: 0.166226089, green: 0.7145680189, blue: 0.2496848106, alpha: 1)
    private static let activeButtonFont = UIFont.systemFont(ofSize: buttonFontSize, weight: UIFont.Weight.bold)
    private static let disabledButtonColor = UIColor.systemGray
    private static let disabledButtonFont = UIFont.systemFont(ofSize: buttonFontSize, weight: UIFont.Weight.light)

    // MARK: - IBActions
    
    @IBAction func letterPressed(_ sender: UIButton) {
        let letter = sender.titleLabel?.text ?? " "
        game.choose(letter: letter)
        updateUI()
    }
    
}

