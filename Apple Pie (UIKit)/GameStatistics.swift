//
//  GameStatistics.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 20.03.2022.
//

struct GameStatistics {
    var totalEpisodes: Int = 0
    var successfulEpisodes: Int = 0
    
    var successfulPercent: Int {
        if totalEpisodes == 0 {
            return 0
        } else {
            return (100 * successfulEpisodes) / totalEpisodes
        }
    }
    
    mutating func addResult(isEpisodeSuccessful: Bool) {
        totalEpisodes += 1
        if isEpisodeSuccessful {
            successfulEpisodes += 1
        }
    }
    
    
}
