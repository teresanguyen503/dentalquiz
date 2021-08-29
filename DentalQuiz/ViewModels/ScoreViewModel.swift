//
//  ScoreViewModel.swift
//  DentalQuiz
//
//  Created by Teresa Nguyen on 8/6/21.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
