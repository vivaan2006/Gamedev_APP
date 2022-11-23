//
//  FourWordWordle.swift
//  FinalProjectSwift
//
//  Created by Mccarthy, Wallace on 11/22/22.
//

import SwiftUI

struct FourWordWordle: View
{
    var wordRandom : Words
    @ObservedObject var randomWords = WordsDataStore(wordData: loadJSON(from: "wordData") as! [Words])
    @State private var index = 0
    
    @State private var randomWord = "Test"
    @State private var winCount = 0;
    
    @State private var letterOne = ""
    @State private var letterTwo = ""
    @State private var letterThree = ""
    @State private var letterFour = ""
    
    @State private var oneLetterOne = ""
    @State private var oneLetterTwo = ""
    @State private var oneLetterThree = ""
    @State private var oneLetterFour = ""
    
    @State private var twoLetterOne = ""
    @State private var twoLetterTwo = ""
    @State private var twoLetterThree = ""
    @State private var twoLetterFour = ""
    
    @State private var threeLetterOne = ""
    @State private var threeLetterTwo = ""
    @State private var threeLetterThree = ""
    @State private var threeLetterFour = ""
    
    @State private var fourLetterOne = ""
    @State private var fourLetterTwo = ""
    @State private var fourLetterThree = ""
    @State private var fourLetterFour = ""
    
    @State private var fiveLetterOne = ""
    @State private var fiveLetterTwo = ""
    @State private var fiveLetterThree = ""
    @State private var fiveLetterFour = ""
    

    @State private var guess = ""
    @State private var buttonText = "Enter"
    @State private var error = false
    @State private var lockInput = false
    @State private var toEndScreenWin = false
    @State private var toEndScreenFail = false
    
    @State private var guessesLeft = 6
    @State private var guessesVisual = "You have 6 guesses left"
    

    var body: some View
    {
        if toEndScreenWin
        {
            EndScreenWin()
        }
        else if toEndScreenFail
        {
            EndScreenFail()
        }
        else
        {
            ZStack
            {
                Color.brown
                    .ignoresSafeArea(.all)
                VStack
                {
                    VStack
                    {
                        Text("Four Letter Wordle")
                            .font(Font.custom("Courier New Bold", size: 35))
                        HStack {
                            TextField("", text: $letterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $letterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $letterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $letterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        HStack
                        {
                            TextField("", text: $oneLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $oneLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $oneLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $oneLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        HStack
                        {
                            TextField("", text: $twoLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $twoLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $twoLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $twoLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        HStack
                        {
                            TextField("", text: $threeLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $threeLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $threeLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $threeLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        HStack {
                            TextField("", text: $fourLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fourLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fourLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fourLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        HStack {
                            TextField("", text: $fiveLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fiveLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fiveLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fiveLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        
                        
                        if error == true
                        {
                            Text("Your Guess must be 4 characters long!")
                                .font(Font.custom("Courier New Bold", size: 15))
                                .foregroundColor(.orange)
                        }
                        TextField(guessesVisual, text: $guess)
                            .padding()
                            .frame(width: 300, height: 70)
                            .background(Color.white.opacity(0.34))
                            .cornerRadius(10)
                            .disabled(lockInput)
                        
                        Button(buttonText)
                        {
                            checkWordLength()
                        }
                        .padding(20)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .italic()
                    }
                }
            }
        }
    }
        
    
    func checkWordLength() -> Void
    {
        guessesLeft = 6 - index
        guessesVisual = "You have \(guessesLeft) guesses left"
        randomWord = String(randomWords.wordData[0].fourLetterWords)
        if (guess.count == 0 && (winCount == 1 || winCount == 2))
        {
            checkIfDone()
        }
        
        if (guess.count > 4)
        {
            error = true
        }
        else if (guess.count < 4)
        {
            error = true
        }
        else
        {
            error = false
            checkWord()
        }
        
        
        
    }
    
    func checkWord() -> Void
    {
        let seperatedInputs = Array(guess)
        if index == 0
        {
            letterOne = String(seperatedInputs[0].uppercased())
            letterTwo = String(seperatedInputs[1].uppercased())
            letterThree = String(seperatedInputs[2].uppercased())
            letterFour = String(seperatedInputs[3].uppercased())
            
            index += 1
            if guess.lowercased() == randomWord.lowercased()
            {
                guess = ""
                guessesVisual = "The word was \(randomWord.uppercased())"
                buttonText = "End Game"
                lockInput = true;
                winCount = 1
            }else
            {
                guess = ""
            }
            
        }
        else if index == 1
        {
            oneLetterOne = String(seperatedInputs[0].uppercased())
            oneLetterTwo = String(seperatedInputs[1].uppercased())
            oneLetterThree = String(seperatedInputs[2].uppercased())
            oneLetterFour = String(seperatedInputs[3].uppercased())
            
            index += 1
            if guess.lowercased() == randomWord.lowercased()
            {
                guess = ""
                guessesVisual = "The word was \(randomWord.uppercased())"
                buttonText = "End Game"
                lockInput = true;
                winCount = 1
            }else
            {
                guess = ""
            }
            
        }
        else if index == 2
        {
            twoLetterOne = String(seperatedInputs[0].uppercased())
            twoLetterTwo = String(seperatedInputs[1].uppercased())
            twoLetterThree = String(seperatedInputs[2].uppercased())
            twoLetterFour = String(seperatedInputs[3].uppercased())
            
            index += 1
            if guess.lowercased() == randomWord.lowercased()
            {
                guess = ""
                guessesVisual = "The word was \(randomWord.uppercased())"
                buttonText = "End Game"
                lockInput = true;
                winCount = 1
            }else
            {
                guess = ""
            }
            
        }
        else if index == 3
        {
            threeLetterOne = String(seperatedInputs[0].uppercased())
            threeLetterTwo = String(seperatedInputs[1].uppercased())
            threeLetterThree = String(seperatedInputs[2].uppercased())
            threeLetterFour = String(seperatedInputs[3].uppercased())
            
            index += 1
            if guess.lowercased() == randomWord.lowercased()
            {
                guess = ""
                guessesVisual = "The word was \(randomWord.uppercased())"
                buttonText = "End Game"
                lockInput = true;
                winCount = 1
            }else
            {
                guess = ""
            }
            
        }
        else if index == 4
        {
            fourLetterOne = String(seperatedInputs[0].uppercased())
            fourLetterTwo = String(seperatedInputs[1].uppercased())
            fourLetterThree = String(seperatedInputs[2].uppercased())
            fourLetterFour = String(seperatedInputs[3].uppercased())
            
            index += 1
            if guess.lowercased() == randomWord.lowercased()
            {
                guess = ""
                guessesVisual = "The word was \(randomWord.uppercased())"
                buttonText = "End Game"
                lockInput = true;
                winCount = 1
            }else
            {
                guess = ""
                
            }
            
        }
        else if index == 5
        {
            fiveLetterOne = String(seperatedInputs[0].uppercased())
            fiveLetterTwo = String(seperatedInputs[1].uppercased())
            fiveLetterThree = String(seperatedInputs[2].uppercased())
            fiveLetterFour = String(seperatedInputs[3].uppercased())
            
            index += 1
            
            if guess.lowercased() == randomWord.lowercased()
            {
                guess = ""
                guessesVisual = "The word was \(randomWord.uppercased())"
                buttonText = "End Game"
                lockInput = true;
                winCount = 1
            }else
            {
                guess = ""
                guessesVisual = "The word was \(randomWord.uppercased())"
                buttonText = "End Game"
                lockInput = true;
                winCount = 2;
            }
        }
    }
    
    func checkIfDone() -> Void
    {
        if winCount == 1
        {
            toEndScreenWin = true
        }
        else if winCount == 2
        {
            toEndScreenFail = true
        }
    }
    
    func randoWord() -> Void
    {
//        randomWord = String(wordRandom.fourLetterWords.index(ofAccessibilityElement: 0))
    }
}

struct FourWordWordle_Previews: PreviewProvider
{
    static var previews: some View
    {
        FourWordWordle(wordRandom: demoWords)
    }
}
