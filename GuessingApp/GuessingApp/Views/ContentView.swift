//
//  ContentView.swift
//  GuessingApp
//
//  Created by Fernando Suarez on 11.01.23.
//

import SwiftUI

struct ContentView: View {

    @State private var isAlertPresented: Bool = false
    @State private var guessNumber = 5
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
                .edgesIgnoringSafeArea(.all)
            VStack {
                IntroductionView()
                    .transition(.scale)
                StepperView(guessNumber: $guessNumber)
                    .padding(.bottom, isAlertPresented ? 0: 100)
                    .transition(.scale)
                
                if isAlertPresented {
                    AlertView(isAlertPresented: $isAlertPresented, game: $game, guessNumber: $guessNumber, target: game.target)
                        .transition(.scale)
                } else {
                    HitMeButtonView(isAlertPresented: $isAlertPresented, game: $game, guessNumber: $guessNumber)
                        .transition(.scale)
                }
                
            }
            .padding(40)
            .transition(.scale)
        }
        
    }
}

struct IntroductionView: View {
    var body: some View {
        VStack {
            IntroductionTextView(text: "Welcome to Guess the number game! \n You will need to guess the number from 1 to 10. \n Enjoy! and Good Luck! 💰")
                .padding()
        }
    }
}

struct StepperView: View {
    @Binding var guessNumber: Int

    var body: some View {
        VStack {
            Stepper("Choose the number", value: $guessNumber, in: 1...10)
                .font(.title3)
                .fontWeight(.black)
            HStack {
                StepperTextView(text: "Your guess is")
                StepperNumberTextView(text: "\(guessNumber)")
            }
        }
    }
}

struct HitMeButtonView: View {
    @Binding var isAlertPresented: Bool
    @Binding var game: Game
    @Binding var guessNumber: Int
    
    var body: some View {
        Button(action: {
            isAlertPresented = true
        }) {
            HitMeButtonTextView(text: "Hit me")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
