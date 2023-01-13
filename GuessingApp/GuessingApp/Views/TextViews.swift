//
//  TextViews.swift
//  GuessingApp
//
//  Created by Fernando Suarez on 11.01.23.
//

import SwiftUI

struct IntroductionTextView: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .padding()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .font(.footnote)
            .lineSpacing(4.0)
    }
}

struct ScoreTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct StepperTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.black)
    }
}

struct StepperNumberTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.largeTitle)
            .foregroundColor(.yellow)
    }
}

struct HitMeButtonTextView: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .padding()
            .frame(maxWidth:  .infinity)
            .background(
                Color.accentColor
            )
            .cornerRadius(21.0)
            .foregroundColor(Color.black)
    }
}

struct LabelTextView: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .font(.footnote)
    }
}

struct AlertBodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .padding()
            .font(.subheadline)
            .fontWeight(.semibold)
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}



struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            IntroductionTextView(text: "Welcome to Guess the number game! \n You will need to guess the number from 1 to 10. \n Enjoy! and Good Luck! 💰")
            ScoreTextView(text: "99")
            StepperTextView(text: "Your guess is")
            StepperNumberTextView(text: "5")
            HitMeButtonTextView(text: "Hit me")
            LabelTextView(text: "Score")
        }
        .padding()
    }
}
