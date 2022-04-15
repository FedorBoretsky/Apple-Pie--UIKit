//
//  AppleTreeViewController.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 06.02.2022.
//

import UIKit

class AppleTreeViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    // Number of attempts indicator
    @IBOutlet weak var resourcesImage: UIImageView!
    @IBOutlet weak var resourcesBackground: UIView!
    
    // Playing controls
    @IBOutlet weak var playingControls: UIStackView!
    @IBOutlet weak var guessedWord: UILabel!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var hintSwitch: UISwitch!
    @IBOutlet var letterButtons: [UIButton]!
    
    // Episode result's controls
    @IBOutlet weak var resultControls: UIStackView!
    @IBOutlet weak var resultMessage: UILabel!
    @IBOutlet weak var capitalCity: UILabel!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var bigFlag: UILabel!
    
    // Statistics controls
    @IBOutlet weak var gameStatisticsLabel: UILabel!
    @IBOutlet weak var gameStatisticsResetButton: UIButton!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Style setup
        guessedWord.font = Self.guessedWordFont
        capitalCity.font = Self.guessedWordFont
        countryName.font = Self.countryInfoFont
        bigFlag.font = Self.bigFlagFont
        // Start game
        newEpisode()
    }
        
    // MARK: - Game
        
    var game: GuessTheWordGameModel! {
        didSet { updateUI() }
    }
    
    var wordsProvider = WordToGuessProvider(collection: GuessingCollection.capitals)
    
    var gameStatistics = GameStatistics() {
        didSet { updateUI() }
    }

    func newEpisode() {
        let newWord = wordsProvider.chooseNewWord()
        game = GuessTheWordGameModel(askedWord: newWord, maximumMistakes: 7)
    }
    
    // MARK: - Update UI
    
    fileprivate func updateResourceImage() {
        let index = game.howManyMistakesCanBeMade
        resourcesImage.image = UIImage(named: "Tree \(index)")
        resourcesImage.backgroundColor = Self.resourcesImageBackgrounds[index]
        resourcesBackground.backgroundColor = resourcesImage.backgroundColor
    }
    
    func updateUI() {
        switch game.status {
        case .keepPlaying:
            playingControls.isHidden = false
            resultControls.isHidden = true
            guessedWord.text = game.guessedResult
            hintLabel.text = hintSwitch.isOn ? wordsProvider.currentHint : wordsProvider.hintTypeDescription
        case .failure, .victory:
            playingControls.isHidden = true
            resultControls.isHidden = false
            resultMessage.text = game.status == .victory ? "Вы угадали!" : "Не угадали. Не растраивайтесь, получится в следующий раз."
            capitalCity.text = wordsProvider.currentWord
            countryName.text = wordsProvider.currentInfo
            bigFlag.text = wordsProvider.currentHint
        }
        updateResourceImage()
        updateLetterButtons()
        updateGameStatisticsLabel()
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
    
    func updateGameStatisticsLabel() {
        // Message
        gameStatisticsLabel.text = "\(gameStatistics.successfulPercent)% (выиграли \(gameStatistics.successfulEpisodes) из \(gameStatistics.totalEpisodes))"
        
        // Show the reset button only if there is something to reset
        gameStatisticsResetButton.isHidden = (gameStatistics.totalEpisodes == 0)
    }
    
    // MARK: - Visual style constants
    
    // Image
    private static let resourcesImageBackgrounds = [
        UIColor(#colorLiteral(red: 0.3725490196, green: 0.3411764706, blue: 0.3843137255, alpha: 1)),
        UIColor(#colorLiteral(red: 0.4666666667, green: 0.4549019608, blue: 0.4980392157, alpha: 1)),
        UIColor(#colorLiteral(red: 0.5254901961, green: 0.5333333333, blue: 0.5725490196, alpha: 1)),
        UIColor(#colorLiteral(red: 0.5882352941, green: 0.6117647059, blue: 0.6470588235, alpha: 1)),
        UIColor(#colorLiteral(red: 0.5764705882, green: 0.7137254902, blue: 0.7725490196, alpha: 1)),
        UIColor(#colorLiteral(red: 0.568627451, green: 0.8235294118, blue: 0.9058823529, alpha: 1)),
        UIColor(#colorLiteral(red: 0.6745098039, green: 0.9137254902, blue: 0.9803921569, alpha: 1)),
        UIColor(#colorLiteral(red: 0.7921568155, green: 0.9411764741, blue: 0.9882352352, alpha: 1)),
    ]
    
    // Text
    private static let guessedWordFont = UIFont.monospacedSystemFont(ofSize: 30, weight: .black)
    private static let countryInfoFont = UIFont.monospacedSystemFont(ofSize: 20, weight: .black)
    private static let bigFlagFont = UIFont.monospacedSystemFont(ofSize: 50, weight: .black)

    // Keyboard buttons
    private static let buttonFontSize: CGFloat = 20
    private static let activeButtonTextColor = UIColor.white
    private static let activeButtonBackgroundColor = UIColor(named: "AccentColor")!
    private static let activeButtonFont = UIFont.systemFont(ofSize: buttonFontSize, weight: UIFont.Weight.medium)
    private static let disabledButtonTextColor = UIColor.white
    private static let disabledButtonBackgroundColor = UIColor.systemGray3
    private static let disabledButtonFont = UIFont.systemFont(ofSize: buttonFontSize, weight: UIFont.Weight.light)

    // MARK: - IBActions
    
    @IBAction func letterPressed(_ sender: UIButton) {
        let letter = sender.titleLabel?.text ?? " "
        game.choose(letter: letter)
        if game.status != .keepPlaying {
            gameStatistics.addResult(isEpisodeSuccessful: game.status == .victory)
        }
    }
    
    @IBAction func tapContinue() {
        newEpisode()
    }
    
    @IBAction func tapHintSwitch() {
        updateUI()
    }
    
    @IBAction func resetStatistics() {
        gameStatistics = GameStatistics()
    }
}

