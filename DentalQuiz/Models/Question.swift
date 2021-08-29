//
//  Question.swift
//  DentalQuiz
//
//  Created by Teresa Nguyen on 8/6/21.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Which mineral helps prevent tooth decay?",
                 possibleAnswers: [
                    "Fluoride",
                    "Sodium",
                    "Sulfur",
                    "Magnesium"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "What is the minimum amount of time you should brush your teeth for?",
                 possibleAnswers: [
                    "2 seconds",
                    "2 minutes",
                    "2 hours",
                    "2 days"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What type of bristle should you brush your teeth with? (At minimum)",
                 possibleAnswers: [
                    "Hard bristle",
                    "Soft bristle",
                    "Medium bristle",
                    "Extra soft bristle"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "How often should you replace your toothbrush?",
                 possibleAnswers: [
                    "Every month",
                    "Every week",
                    "Every three months",
                    "Once a year"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Do I really need to floss?",
                 possibleAnswers: [
                    "Yes",
                    "No",
                    "What is floss?",
                    "Only before going to the dental office"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "How long should you wait to brush your teeth if you ate or drank something acidic?",
                 possibleAnswers: [
                    "Don't wait, brush NOW",
                    "15 minutes",
                    "The next day",
                    "30 minutes"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "How many times a year, at minimum, should you see your dentist?",
                 possibleAnswers: [
                    "When my teeth hurts",
                    "Once a year",
                    "Everyday",
                    "Every other year"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What is NOT a reason to get a dental x-ray?",
                 possibleAnswers: [
                    "Check for decay",
                    "Check for abscess (infection)",
                    "Check for plaque",
                    "Check for tartar"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "What can be reasons for having tooth sensitivity?",
                 possibleAnswers: [
                    "Grinding",
                    "Receding gums",
                    "Teeth whitening",
                    "All the above"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "At what age should a child start seeing the dentist?",
                 possibleAnswers: [
                    "When teeth first start to show",
                    "2 years old",
                    "4 years old",
                    "6 years old"
                 ],
                 correctAnswerIndex: 0),
    ]
}
