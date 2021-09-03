//
//  GameView.swift
//  DentalQuiz
//
//  Created by Teresa Nguyen on 8/6/21.
//

import SwiftUI

struct QuizView: View {
    @StateObject var viewModel = QuizViewModel()
    
    var body: some View {
        ZStack {
            ColorScheme.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
            .foregroundColor(.black)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
        .background(
            NavigationLink(destination: ResultsView(viewModel: ResultsViewModel(correctGuesses: viewModel.correctGuesses,
                           incorrectGuesses: viewModel.incorrectGuesses)),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView() })
        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
