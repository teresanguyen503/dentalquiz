//
//  ChoiceTextView.swift
//  DentalQuiz
//
//  Created by Teresa Nguyen on 8/6/21.
//

import SwiftUI

struct MultipleChoiceView: View {
    let choiceText: String

    var body: some View {
        Text(choiceText)
          .font(.body)
          .bold()
          .multilineTextAlignment(.center)
          .frame(maxWidth: .infinity)
          .padding()
          .overlay(RoundedRectangle(cornerRadius: 25) .stroke(ColorScheme.accent, lineWidth: 4))
          .padding(.horizontal, 20)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleChoiceView(choiceText: "Multiple Choice")
    }
}
