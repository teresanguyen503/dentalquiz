//
//  ScoreView.swift
//  DentalQuiz
//
//  Created by Teresa Nguyen on 8/6/21.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            ColorScheme.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) ✅🤓")
                    Text("\(viewModel.incorrectGuesses) ❌😐")
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                            .cornerRadius(25) .padding(.horizontal, 20)
                    })
            }
            .foregroundColor(.black)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 5, incorrectGuesses: 5))
    }
}
