//
//  Capitals.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 05.03.2022.
//

extension GuessingCollection {
    static let capitals = GuessingCollection(
        hintTypeDescription: "🏳️",
        list: [
            WordToGuess(word: "Тирана", info: "Столица Албании", hint: "🇦🇱"),
            WordToGuess(word: "Алжир", info: "Столица Алжира", hint: "🇩🇿"),
            WordToGuess(word: "Андорра-ла-Велья", info: "Столица Андорры", hint: "🇦🇩"),
            WordToGuess(word: "Луанда", info: "Столица Анголы", hint: "🇦🇴"),
            WordToGuess(word: "Сент-Джонс", info: "Столица Антигуа и Барбуда", hint: "🇦🇬"),
            WordToGuess(word: "Буэнос-Айрес", info: "Столица Аргентины", hint: "🇦🇷"),
            WordToGuess(word: "Ереван", info: "Столица Армении", hint: "🇦🇲"),
            WordToGuess(word: "Канберра", info: "Столица Австралии", hint: "🇦🇺"),
        ]
        )
}
