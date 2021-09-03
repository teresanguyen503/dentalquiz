//
//  GameViewModel.swift
//  DentalQuiz
//
//  Created by Teresa Nguyen on 8/6/21.
//

import SwiftUI

class QuizViewModel: ObservableObject {
    
    @Published private var game = Quiz()
    
    var currentQuestion: Question {
        game.currentQuestion
    }
            
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    var correctGuesses: Int {
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }

    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return ColorScheme.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return ColorScheme.correctGuess
            } else {
                return ColorScheme.incorrectGuess
            }
        } else {
            return ColorScheme.main
        }
    }
}

