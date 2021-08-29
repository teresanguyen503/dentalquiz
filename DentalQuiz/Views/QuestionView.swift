//
//  QuestionView.swift
//  DentalQuiz
//
//  Created by Teresa Nguyen on 8/6/21.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            VStack {
                ForEach(0..<question.possibleAnswers.count) { index in
                    Button {
                        viewModel.makeGuess(atIndex: index)
                        print("Tapped on option with the text: \(question.possibleAnswers[index])")
                    } label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[index])
                            .background(viewModel.color(forOptionIndex: index) .cornerRadius(25) .padding(.horizontal, 20))
                    }
                    .disabled(viewModel.guessWasMade)
                }
            }
            if viewModel.guessWasMade {
                Button(action: { viewModel.displayNextScreen() }) {
                    BottomTextView(str: "Next")
                        .cornerRadius(25)
                        .padding(.horizontal, 20)
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
