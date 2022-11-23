//
//  FourWordWordle.swift
//  FinalProjectSwift
//
//  Created by Mccarthy, Wallace on 11/22/22.
//

import SwiftUI

struct FourWordWordle: View
{
    @ObservedObject var randomWords = WordsDataStore(wordData: loadJSON(from: "wordData") as! [Words])
    @State private var index = 0
    @State private var generatedrandomWord = false
    
    @State private var randomWord = "Test"
    @State private var winCount = 0;
    
    @State private var letterOne = ""
    @State private var letterTwo = ""
    @State private var letterThree = ""
    @State private var letterFour = ""
    @State private var letterOneColor = Color.white.opacity(0.34)
    @State private var letterTwoColor = Color.white.opacity(0.34)
    @State private var letterThreeColor = Color.white.opacity(0.34)
    @State private var letterFourColor = Color.white.opacity(0.34)
    
    @State private var oneLetterOne = ""
    @State private var oneLetterTwo = ""
    @State private var oneLetterThree = ""
    @State private var oneLetterFour = ""
    @State private var oneLetterOneColor = Color.white.opacity(0.34)
    @State private var oneLetterTwoColor = Color.white.opacity(0.34)
    @State private var oneLetterThreeColor = Color.white.opacity(0.34)
    @State private var oneLetterFourColor = Color.white.opacity(0.34)
    
    @State private var twoLetterOne = ""
    @State private var twoLetterTwo = ""
    @State private var twoLetterThree = ""
    @State private var twoLetterFour = ""
    @State private var twoLetterOneColor = Color.white.opacity(0.34)
    @State private var twoLetterTwoColor = Color.white.opacity(0.34)
    @State private var twoLetterThreeColor = Color.white.opacity(0.34)
    @State private var twoLetterFourColor = Color.white.opacity(0.34)
    
    @State private var threeLetterOne = ""
    @State private var threeLetterTwo = ""
    @State private var threeLetterThree = ""
    @State private var threeLetterFour = ""
    @State private var threeLetterOneColor = Color.white.opacity(0.34)
    @State private var threeLetterTwoColor = Color.white.opacity(0.34)
    @State private var threeLetterThreeColor = Color.white.opacity(0.34)
    @State private var threeLetterFourColor = Color.white.opacity(0.34)
    
    @State private var fourLetterOne = ""
    @State private var fourLetterTwo = ""
    @State private var fourLetterThree = ""
    @State private var fourLetterFour = ""
    @State private var fourLetterOneColor = Color.white.opacity(0.34)
    @State private var fourLetterTwoColor = Color.white.opacity(0.34)
    @State private var fourLetterThreeColor = Color.white.opacity(0.34)
    @State private var fourLetterFourColor = Color.white.opacity(0.34)
    
    @State private var fiveLetterOne = ""
    @State private var fiveLetterTwo = ""
    @State private var fiveLetterThree = ""
    @State private var fiveLetterFour = ""
    @State private var fiveLetterOneColor = Color.white.opacity(0.34)
    @State private var fiveLetterTwoColor = Color.white.opacity(0.34)
    @State private var fiveLetterThreeColor = Color.white.opacity(0.34)
    @State private var fiveLetterFourColor = Color.white.opacity(0.34)
    

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
                                .background(letterOneColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))
                            TextField("", text: $letterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(letterTwoColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $letterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(letterThreeColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $letterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(letterFourColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        HStack
                        {
                            TextField("", text: $oneLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $oneLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $oneLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $oneLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        HStack
                        {
                            TextField("", text: $twoLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $twoLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $twoLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $twoLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        HStack
                        {
                            TextField("", text: $threeLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $threeLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $threeLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $threeLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        HStack {
                            TextField("", text: $fourLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fourLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fourLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fourLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        HStack {
                            TextField("", text: $fiveLetterOne)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fiveLetterTwo)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fiveLetterThree)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fiveLetterFour)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

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
        if generatedrandomWord == false
        {
            generateRandomWord()
        }
        
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
        let seperatedRandomWord = Array(randomWord)
        let randomLetterOne = String(seperatedRandomWord[0].uppercased())
        let randomLetterTwo = String(seperatedRandomWord[1].uppercased())
        let randomLetterThree = String(seperatedRandomWord[2].uppercased())
        let randomLetterFour = String(seperatedRandomWord[3].uppercased())
        if index == 0
        {
            letterOne = String(seperatedInputs[0].uppercased())
            letterTwo = String(seperatedInputs[1].uppercased())
            letterThree = String(seperatedInputs[2].uppercased())
            letterFour = String(seperatedInputs[3].uppercased())
            
            if (letterOne == randomLetterOne)
            {
                letterOneColor = Color.green
            }
            else if (letterOne  == randomLetterTwo || letterOne == randomLetterThree || letterOne == randomLetterFour)
            {
                letterOneColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterOneColor = Color.white.opacity(0.64)
            }
            
            if (letterTwo == randomLetterTwo)
            {
                letterTwoColor = Color.green
            }
            else if (letterTwo  == randomLetterOne || letterTwo == randomLetterThree || letterTwo == randomLetterFour)
            {
                letterTwoColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterTwoColor = Color.white.opacity(0.64)
            }
            
            if (letterThree == randomLetterThree)
            {
                letterThreeColor = Color.green
            }
            else if (letterThree  == randomLetterTwo || letterThree == randomLetterOne || letterThree == randomLetterFour)
            {
                letterThreeColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterThreeColor = Color.white.opacity(0.64)
            }
            
            if (letterFour == randomLetterFour)
            {
                letterFourColor = Color.green
            }
            else if (letterFour  == randomLetterTwo || letterFour == randomLetterThree || letterFour == randomLetterOne)
            {
                letterFourColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterFourColor = Color.white.opacity(0.64)
            }
            
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
            
            if (oneLetterOne == randomLetterOne)
            {
                letterOneColor = Color.green
            }
            else if (oneLetterOne  == randomLetterTwo || oneLetterOne == randomLetterThree || oneLetterOne == randomLetterFour)
            {
                letterOneColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterOneColor = Color.white.opacity(0.64)
            }
            
            if (letterTwo == randomLetterTwo)
            {
                letterTwoColor = Color.green
            }
            else if (letterTwo  == randomLetterOne || letterTwo == randomLetterThree || letterTwo == randomLetterFour)
            {
                letterTwoColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterTwoColor = Color.white.opacity(0.64)
            }
            
            if (letterThree == randomLetterThree)
            {
                letterThreeColor = Color.green
            }
            else if (letterThree  == randomLetterTwo || letterThree == randomLetterOne || letterThree == randomLetterFour)
            {
                letterThreeColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterThreeColor = Color.white.opacity(0.64)
            }
            
            if (letterFour == randomLetterFour)
            {
                letterFourColor = Color.green
            }
            else if (letterFour  == randomLetterTwo || letterFour == randomLetterThree || letterFour == randomLetterOne)
            {
                letterFourColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterFourColor = Color.white.opacity(0.64)
            }
            
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
    
    func generateRandomWord() -> Void
    {
        let maxIndex = 462
        let randomIndex = Int.random(in: 0...maxIndex)
//        randomWord = String(randomWords.wordData[randomIndex].fourLetterWords)
        randomWord = String(randomWords.wordData[0].fourLetterWords)
        generatedrandomWord = true
    }
}

struct FourWordWordle_Previews: PreviewProvider
{
    static var previews: some View
    {
        FourWordWordle()
    }
}
