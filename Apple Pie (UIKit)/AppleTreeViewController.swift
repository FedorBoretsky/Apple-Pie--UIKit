//
//  AppleTreeViewController.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 06.02.2022.
//

import UIKit

class AppleTreeViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var resourcesImage: UIImageView!
    
    @IBOutlet weak var playingControls: UIStackView!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var guessedWord: UILabel!
    @IBOutlet weak var hintSpace: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBOutlet weak var resultControls: UIStackView!
    @IBOutlet weak var resultMessage: UILabel!
    @IBOutlet weak var capitalCity: UILabel!
    @IBOutlet weak var countryName: UILabel!
    
    @IBOutlet weak var gameStats: UILabel!
    @IBOutlet weak var hintSwitch: UISwitch!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Style setup
        guessedWord.font = Self.guessedWordFont
        capitalCity.font = Self.guessedWordFont
        countryName.font = Self.countryInfoFont
        // Start game
        newRound()
    }
        
    // MARK: - Game
        
    var game: GuessTheWordGameModel! {
        didSet {
            updateUI()
        }
    }
    
    var wordsProvider = WordToGuessProvider(collection: GuessingCollection.capitals)
    
    func newRound() {
        let newWord = wordsProvider.chooseNewWord()
        game = GuessTheWordGameModel(askedWord: newWord, maximumMistakes: 7)
    }
    
    // MARK: - Update
    
    func updateUI() {
        resourcesImage.image = UIImage(named: "Tree \(game.howManyMistakesCanBeMade)")
        switch game.status {
        case .keepPlaying:
            playingControls.isHidden = false
            resultControls.isHidden = true
            guessedWord.text = game.guessedResult // + (hintSwitch.isOn ? " \(capitalProvider.currentHint)" : "")
            hintLabel.text = hintSwitch.isOn ? wordsProvider.currentHint : wordsProvider.disabledHintLabel
            
//            hintLabel.layer.opacity = hintSwitch.isOn ? 1 : 0
        case .failure, .victory:
            playingControls.isHidden = true
            resultControls.isHidden = false
            resultMessage.text = game.status == .victory ? "Вы угадали!" : "Не угадали. Не растраивайтесь, получится в следующий раз."
            capitalCity.text = wordsProvider.currentWord
            countryName.text = wordsProvider.currentInfo
        }
        updateLetterButtons()
    }
        
    func updateLetterButtons() {
        for button in letterButtons {
            let letter = button.titleLabel?.text ?? " "
            let isAlreadyChoosen = game.alreadyChoosenLetters.contains(letter.lowercased())
            if isAlreadyChoosen {
                button.isEnabled = false
                button.backgroundColor = Self.disabledButtonBackgroundColor
                button.setTitleColor(Self.disabledButtonTextColor, for: .disabled)
                button.titleLabel?.font = Self.disabledButtonFont
            } else {
                button.isEnabled = true
                button.backgroundColor = Self.activeButtonBackgroundColor
                button.setTitleColor(Self.activeButtonTextColor, for: .normal)
                button.titleLabel?.font = Self.activeButtonFont
            }
        }
    }
    
    // MARK: - Text style constants
    
    private static let guessedWordFont = UIFont.monospacedSystemFont(ofSize: 30, weight: .black)
    private static let countryInfoFont = UIFont.monospacedSystemFont(ofSize: 20, weight: .black)

    // MARK: - Button style constants
    
    private static let buttonFontSize: CGFloat = 20
    private static let activeButtonTextColor = UIColor.white
    private static let activeButtonBackgroundColor = UIColor(named: "AccentColor")!
    private static let activeButtonFont = UIFont.systemFont(ofSize: buttonFontSize, weight: UIFont.Weight.bold)
    private static let disabledButtonTextColor = UIColor.white
    private static let disabledButtonBackgroundColor = UIColor.systemGray3
    private static let disabledButtonFont = UIFont.systemFont(ofSize: buttonFontSize, weight: UIFont.Weight.light)

    // MARK: - IBActions
    
    @IBAction func letterPressed(_ sender: UIButton) {
        let letter = sender.titleLabel?.text ?? " "
        game.choose(letter: letter)
    }
    
    @IBAction func tapNewRound() {
        newRound()
    }
    
    @IBAction func tapHintSwitch() {
        updateUI()
    }
    
}

