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
    @IBOutlet weak var guessedWordLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var gameKeyboard: UIStackView!
    @IBOutlet weak var roundEndUI: UIStackView!
    @IBOutlet weak var aboutWord: UILabel!
    @IBOutlet weak var resultMessage: UILabel!
    @IBOutlet weak var gameStatsLabel: UILabel!
    
    // MARK: - Controller
    
    var game: GuessTheWordGameModel! {
        didSet {
            updateUI()
        }
    }
    
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
        switch game.status {
        case .keepPlaying:
            gameKeyboard.isHidden = false
            roundEndUI.isHidden = true
        case .failure:
            gameKeyboard.isHidden = true
            roundEndUI.isHidden = false
            resultMessage.text = "Вы проиграли. Не растраивайтесь, получится в следующий раз."
        case .victory:
            gameKeyboard.isHidden = true
            roundEndUI.isHidden = false
            resultMessage.text = "Вы угадали!"
        }
        guessedWordLabel.text = (game.status == .keepPlaying) ? game.guessedResult : game.askedWord
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

