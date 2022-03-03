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
    @IBOutlet weak var guessedWord: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBOutlet weak var resultControls: UIStackView!
    @IBOutlet weak var resultMessage: UILabel!
    @IBOutlet weak var capitalCity: UILabel!
    @IBOutlet weak var countryName: UILabel!
    
    @IBOutlet weak var gameStats: UILabel!
    
    // MARK: - Lifecycle
    
    var game: GuessTheWordGameModel! {
        didSet {
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Style setup
        guessedWord.font = Self.guessedWordFont
        capitalCity.font = Self.guessedWordFont
        countryName.font = Self.guessedWordFont
        // Start game
        newRound()
    }
        
    func newRound() {
        game = GuessTheWordGameModel(askedWord: "Ниагара Дрим", maximumMistakes: 7)
    }
    
    // MARK: - Update
    
    func updateUI() {
        resourcesImage.image = UIImage(named: "Tree \(game.howManyMistakesCanBeMade)")
        switch game.status {
        case .keepPlaying:
            playingControls.isHidden = false
            resultControls.isHidden = true
            guessedWord.text = game.guessedResult
        case .failure:
            playingControls.isHidden = true
            resultControls.isHidden = false
            resultMessage.text = "Вы проиграли. Не растраивайтесь, получится в следующий раз."
            capitalCity.text = game.askedWord
        case .victory:
            playingControls.isHidden = true
            resultControls.isHidden = false
            resultMessage.text = "Вы угадали!"
            capitalCity.text = game.askedWord
        }
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
    
    // MARK: - Text style constants
    
    private static let guessedWordFont = UIFont.monospacedSystemFont(ofSize: 30, weight: .black)
    
    // MARK: - Button style constants
    
    private static let buttonFontSize: CGFloat = 20
    private static let activeButtonColor = UIColor(named: "AccentColor")!
    private static let activeButtonFont = UIFont.systemFont(ofSize: buttonFontSize, weight: UIFont.Weight.bold)
    private static let disabledButtonColor = UIColor.systemGray
    private static let disabledButtonFont = UIFont.systemFont(ofSize: buttonFontSize, weight: UIFont.Weight.light)

    // MARK: - IBActions
    
    @IBAction func letterPressed(_ sender: UIButton) {
        let letter = sender.titleLabel?.text ?? " "
        game.choose(letter: letter)
    }
    
    @IBAction func tapNewRound() {
        newRound()
    }
}

