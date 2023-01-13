//
//  AlertView.swift
//  GuessingApp
//
//  Created by Fernando Suarez on 12.01.23.
//

import SwiftUI

struct AlertView: View {
    @Binding var isAlertPresented: Bool
    @Binding var game: Game
    @Binding var guessNumber: Int
    var target: Int
    
    var body: some View {
        
        let points = game.points(stepperValue: guessNumber)
        VStack(spacing: 10) {
            IntroductionTextView(text: "The guess value is")
            ScoreTextView(text: "\(target)")
            AlertBodyText(text: "You score \(points) \n 🍎🍎🍎")
            Button(action: {
                withAnimation {
                    isAlertPresented = false
                }
                game.startNewRound(points: points)
            }) {
                HitMeButtonTextView(text: "Start New round")
            }
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21.0)
        .shadow(radius: 10, x: 5, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .stroke(lineWidth: 2.0)
                .foregroundColor(Color("ButtonStrokeColor")))
        .transition(.scale)
        
    }
}

struct AlertView_Previews: PreviewProvider {
    static private var isAlertPresented = Binding.constant(false)
    static private var game = Binding.constant(Game())
    static private var guessNumber = Binding.constant(5)
    static private var target = 5
    
    static var previews: some View {
        AlertView(isAlertPresented: isAlertPresented, game: game, guessNumber: guessNumber, target: target)
        AlertView(isAlertPresented: isAlertPresented, game: game, guessNumber: guessNumber, target: target)
            .previewLayout(.fixed(width: 568, height: 320))
        AlertView(isAlertPresented: isAlertPresented, game: game, guessNumber: guessNumber, target: target)
            .preferredColorScheme(.dark)
        AlertView(isAlertPresented: isAlertPresented, game: game, guessNumber: guessNumber, target: target)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
