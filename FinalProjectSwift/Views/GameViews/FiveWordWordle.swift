//
//  FourWordWordle.swift
//  FinalProjectSwift
//
//  Created by Mccarthy, Wallace on 11/22/22.
//

import SwiftUI

struct FiveWordWordle: View
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
    @State private var letterFive = ""
    @State private var letterOneColor = Color.white.opacity(0.34)
    @State private var letterTwoColor = Color.white.opacity(0.34)
    @State private var letterThreeColor = Color.white.opacity(0.34)
    @State private var letterFourColor = Color.white.opacity(0.34)
    @State private var letterFiveColor = Color.white.opacity(0.34)

    @State private var oneLetterOne = ""
    @State private var oneLetterTwo = ""
    @State private var oneLetterThree = ""
    @State private var oneLetterFour = ""
    @State private var oneLetterFive = ""
    @State private var oneLetterOneColor = Color.white.opacity(0.34)
    @State private var oneLetterTwoColor = Color.white.opacity(0.34)
    @State private var oneLetterThreeColor = Color.white.opacity(0.34)
    @State private var oneLetterFourColor = Color.white.opacity(0.34)
    @State private var oneLetterFiveColor = Color.white.opacity(0.34)

    @State private var twoLetterOne = ""
    @State private var twoLetterTwo = ""
    @State private var twoLetterThree = ""
    @State private var twoLetterFour = ""
    @State private var twoLetterFive = ""
    @State private var twoLetterOneColor = Color.white.opacity(0.34)
    @State private var twoLetterTwoColor = Color.white.opacity(0.34)
    @State private var twoLetterThreeColor = Color.white.opacity(0.34)
    @State private var twoLetterFourColor = Color.white.opacity(0.34)
    @State private var twoLetterFiveColor = Color.white.opacity(0.34)
    
    @State private var threeLetterOne = ""
    @State private var threeLetterTwo = ""
    @State private var threeLetterThree = ""
    @State private var threeLetterFour = ""
    @State private var threeLetterFive = ""
    @State private var threeLetterOneColor = Color.white.opacity(0.34)
    @State private var threeLetterTwoColor = Color.white.opacity(0.34)
    @State private var threeLetterThreeColor = Color.white.opacity(0.34)
    @State private var threeLetterFourColor = Color.white.opacity(0.34)
    @State private var threeLetterFiveColor = Color.white.opacity(0.34)
    
    @State private var fourLetterOne = ""
    @State private var fourLetterTwo = ""
    @State private var fourLetterThree = ""
    @State private var fourLetterFour = ""
    @State private var fourLetterFive = ""
    @State private var fourLetterOneColor = Color.white.opacity(0.34)
    @State private var fourLetterTwoColor = Color.white.opacity(0.34)
    @State private var fourLetterThreeColor = Color.white.opacity(0.34)
    @State private var fourLetterFourColor = Color.white.opacity(0.34)
    @State private var fourLetterFiveColor = Color.white.opacity(0.34)
    
    @State private var fiveLetterOne = ""
    @State private var fiveLetterTwo = ""
    @State private var fiveLetterThree = ""
    @State private var fiveLetterFour = ""
    @State private var fiveLetterFive = ""
    @State private var fiveLetterOneColor = Color.white.opacity(0.34)
    @State private var fiveLetterTwoColor = Color.white.opacity(0.34)
    @State private var fiveLetterThreeColor = Color.white.opacity(0.34)
    @State private var fiveLetterFourColor = Color.white.opacity(0.34)
    @State private var fiveLetterFiveColor = Color.white.opacity(0.34)
    

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
                        Text("Five Letter Wordle")
                            .font(Font.custom("Courier New Bold", size: 35))
                        HStack
                        {
                            TextField("", text: $letterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(letterOneColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))
                            TextField("", text: $letterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(letterTwoColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $letterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(letterThreeColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $letterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(letterFourColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))
                            TextField("", text: $letterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(letterFiveColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                     
                        HStack
                        {
                            TextField("", text: $oneLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(oneLetterOneColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $oneLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(oneLetterTwoColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $oneLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(oneLetterThreeColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $oneLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(oneLetterFourColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))
                            TextField("", text: $oneLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(oneLetterFiveColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        
                        HStack
                        {
                            TextField("", text: $twoLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(twoLetterOneColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $twoLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(twoLetterTwoColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $twoLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(twoLetterThreeColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $twoLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(twoLetterFourColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))
                            TextField("", text: $twoLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(twoLetterFiveColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        HStack
                        {
                            TextField("", text: $threeLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(threeLetterOneColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $threeLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(threeLetterTwoColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $threeLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(threeLetterThreeColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $threeLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(threeLetterFourColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))
                            TextField("", text: $threeLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(threeLetterFiveColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        HStack {
                            TextField("", text: $fourLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fourLetterOneColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fourLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fourLetterTwoColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fourLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fourLetterThreeColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fourLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fourLetterFourColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))
                            TextField("", text: $fourLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fourLetterFiveColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        HStack {
                            TextField("", text: $fiveLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fiveLetterOneColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fiveLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fiveLetterTwoColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fiveLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fiveLetterThreeColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                            TextField("", text: $fiveLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fiveLetterFourColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))
                            TextField("", text: $fiveLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(fiveLetterFiveColor)
                                .cornerRadius(10)
                                .disabled(true)
                                .font(Font.custom("Courier New Bold", size: 35))

                        }
                        
                        
                        if error == true
                        {
                            Text("Your Guess must be 5 characters long!")
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
        
        if (guess.count > 5)
        {
            error = true
        }
        else if (guess.count < 5)
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
        let randomLetterFive = String(seperatedRandomWord[4].uppercased())
      
        if index == 0
        {
            letterOne = String(seperatedInputs[0].uppercased())
            letterTwo = String(seperatedInputs[1].uppercased())
            letterThree = String(seperatedInputs[2].uppercased())
            letterFour = String(seperatedInputs[3].uppercased())
            letterFive = String(seperatedInputs[4].uppercased())
            
            if (letterOne == randomLetterOne)
            {
                letterOneColor = Color.green
            }
            else if (letterOne  == randomLetterTwo || letterOne == randomLetterThree || letterOne == randomLetterFour || letterOne == randomLetterFive)
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
            else if (letterTwo  == randomLetterOne || letterTwo == randomLetterThree || letterTwo == randomLetterFour || letterTwo == randomLetterFive)
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
            else if (letterThree  == randomLetterTwo || letterThree == randomLetterOne || letterThree == randomLetterFour || letterThree == randomLetterFive)
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
            else if (letterFour  == randomLetterTwo || letterFour == randomLetterThree || letterFour == randomLetterOne || letterFour == randomLetterFive)
            {
                letterFourColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterFourColor = Color.white.opacity(0.64)
            }
            
            if (letterFive == randomLetterFive)
            {
                letterFiveColor = Color.green
            }
            else if (letterFive  == randomLetterTwo || letterFive == randomLetterThree || letterFive == randomLetterOne || letterFive == randomLetterFour || letterFive == randomLetterFive)
            {
                letterFiveColor = Color.yellow.opacity(0.9)
            }
            else
            {
                letterFiveColor = Color.white.opacity(0.64)
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
            oneLetterFive = String(seperatedInputs[4].uppercased())
            
            if (oneLetterOne == randomLetterOne)
            {
                oneLetterOneColor = Color.green
            }
            else if (oneLetterOne  == randomLetterTwo || oneLetterOne == randomLetterThree || oneLetterOne == randomLetterFour || oneLetterOne == randomLetterFive)
            {
                oneLetterOneColor = Color.yellow.opacity(0.9)
            }
            else
            {
                oneLetterOneColor = Color.white.opacity(0.64)
            }
            
            if (oneLetterTwo == randomLetterTwo)
            {
                oneLetterTwoColor = Color.green
            }
            else if (oneLetterTwo  == randomLetterOne || oneLetterTwo == randomLetterThree || oneLetterTwo == randomLetterFour || oneLetterTwo == randomLetterFive)
            {
                oneLetterTwoColor = Color.yellow.opacity(0.9)
            }
            else
            {
                oneLetterTwoColor = Color.white.opacity(0.64)
            }
            
            if (oneLetterThree == randomLetterThree)
            {
                oneLetterThreeColor = Color.green
            }
            else if (oneLetterThree  == randomLetterTwo || oneLetterThree == randomLetterOne || oneLetterThree == randomLetterFour || oneLetterThree == randomLetterFive)
            {
                oneLetterThreeColor = Color.yellow.opacity(0.9)
            }
            else
            {
                oneLetterThreeColor = Color.white.opacity(0.64)
            }
            
            if (oneLetterFour == randomLetterFour)
            {
                oneLetterFourColor = Color.green
            }
            else if (oneLetterFour  == randomLetterTwo || oneLetterFour == randomLetterThree || oneLetterFour == randomLetterOne || oneLetterFour == randomLetterFive)
            {
                oneLetterFourColor = Color.yellow.opacity(0.9)
            }
            else
            {
                oneLetterFourColor = Color.white.opacity(0.64)
            }
            
            if (oneLetterFive == randomLetterFive)
            {
                oneLetterFiveColor = Color.green
            }
            else if (oneLetterFive  == randomLetterTwo || oneLetterFive == randomLetterThree || oneLetterFive == randomLetterOne || oneLetterFive == randomLetterFour)
            {
                oneLetterFiveColor = Color.yellow.opacity(0.9)
            }
            else
            {
                oneLetterFiveColor = Color.white.opacity(0.64)
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
            twoLetterFive = String(seperatedInputs[4].uppercased())
            
            if (twoLetterOne == randomLetterOne)
            {
                twoLetterOneColor = Color.green
            }
            else if (twoLetterOne  == randomLetterTwo || twoLetterOne == randomLetterThree || twoLetterOne == randomLetterFour || twoLetterOne == randomLetterFive)
            {
                twoLetterOneColor = Color.yellow.opacity(0.9)
            }
            else
            {
                twoLetterOneColor = Color.white.opacity(0.64)
            }
            
            if (twoLetterTwo == randomLetterTwo)
            {
                twoLetterTwoColor = Color.green
            }
            else if (twoLetterTwo  == randomLetterOne || twoLetterTwo == randomLetterThree || twoLetterTwo == randomLetterFour || twoLetterTwo == randomLetterFive)
            {
                twoLetterTwoColor = Color.yellow.opacity(0.9)
            }
            else
            {
                twoLetterTwoColor = Color.white.opacity(0.64)
            }
            
            if (twoLetterThree == randomLetterThree)
            {
                twoLetterThreeColor = Color.green
            }
            else if (twoLetterThree  == randomLetterTwo || twoLetterThree == randomLetterOne || twoLetterThree == randomLetterFour || twoLetterThree == randomLetterFive)
            {
                twoLetterThreeColor = Color.yellow.opacity(0.9)
            }
            else
            {
                twoLetterThreeColor = Color.white.opacity(0.64)
            }
            
            if (twoLetterFour == randomLetterFour)
            {
                twoLetterFourColor = Color.green
            }
            else if (twoLetterFour  == randomLetterTwo || twoLetterFour == randomLetterThree || twoLetterFour == randomLetterOne || twoLetterFour == randomLetterFive)
            {
                twoLetterFourColor = Color.yellow.opacity(0.9)
            }
            else
            {
                twoLetterFourColor = Color.white.opacity(0.64)
            }
            
            if (twoLetterFive == randomLetterFive)
            {
                twoLetterFiveColor = Color.green
            }
            else if (twoLetterFive  == randomLetterTwo || twoLetterFive == randomLetterThree || twoLetterFive == randomLetterOne || twoLetterFive == randomLetterFour)
            {
                twoLetterFiveColor = Color.yellow.opacity(0.9)
            }
            else
            {
                twoLetterFiveColor = Color.white.opacity(0.64)
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
        else if index == 3
        {
            threeLetterOne = String(seperatedInputs[0].uppercased())
            threeLetterTwo = String(seperatedInputs[1].uppercased())
            threeLetterThree = String(seperatedInputs[2].uppercased())
            threeLetterFour = String(seperatedInputs[3].uppercased())
            threeLetterFive = String(seperatedInputs[4].uppercased())
            
            if (threeLetterOne == randomLetterOne)
            {
                threeLetterOneColor = Color.green
            }
            else if (threeLetterOne  == randomLetterTwo || threeLetterOne == randomLetterThree || threeLetterOne == randomLetterFour || threeLetterOne == randomLetterFive)
            {
                threeLetterOneColor = Color.yellow.opacity(0.9)
            }
            else
            {
                threeLetterOneColor = Color.white.opacity(0.64)
            }
            
            if (threeLetterTwo == randomLetterTwo)
            {
                threeLetterTwoColor = Color.green
            }
            else if (threeLetterTwo  == randomLetterOne || threeLetterTwo == randomLetterThree || threeLetterTwo == randomLetterFour || threeLetterTwo == randomLetterFive)
            {
                threeLetterTwoColor = Color.yellow.opacity(0.9)
            }
            else
            {
                threeLetterTwoColor = Color.white.opacity(0.64)
            }
            
            if (threeLetterThree == randomLetterThree)
            {
                threeLetterThreeColor = Color.green
            }
            else if (threeLetterThree  == randomLetterTwo || threeLetterThree == randomLetterOne || threeLetterThree == randomLetterFour || threeLetterThree == randomLetterFive)
            {
                threeLetterThreeColor = Color.yellow.opacity(0.9)
            }
            else
            {
                threeLetterThreeColor = Color.white.opacity(0.64)
            }
            
            if (threeLetterFour == randomLetterFour)
            {
                threeLetterFourColor = Color.green
            }
            else if (threeLetterFour  == randomLetterTwo || threeLetterFour == randomLetterThree || threeLetterFour == randomLetterOne || threeLetterFour == randomLetterFive)
            {
                threeLetterFourColor = Color.yellow.opacity(0.9)
            }
            else
            {
                threeLetterFourColor = Color.white.opacity(0.64)
            }
            
            if (threeLetterFive == randomLetterFive)
            {
                threeLetterFiveColor = Color.green
            }
            else if (threeLetterFive  == randomLetterTwo || threeLetterFive == randomLetterThree || threeLetterFive == randomLetterOne || threeLetterFive == randomLetterFour)
            {
                threeLetterFiveColor = Color.yellow.opacity(0.9)
            }
            else
            {
                threeLetterFiveColor = Color.white.opacity(0.64)
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
        else if index == 4
        {
            fourLetterOne = String(seperatedInputs[0].uppercased())
            fourLetterTwo = String(seperatedInputs[1].uppercased())
            fourLetterThree = String(seperatedInputs[2].uppercased())
            fourLetterFour = String(seperatedInputs[3].uppercased())
            fourLetterFive = String(seperatedInputs[4].uppercased())
            
            if (fourLetterOne == randomLetterOne)
            {
                fourLetterOneColor = Color.green
            }
            else if (fourLetterOne  == randomLetterTwo || fourLetterOne == randomLetterThree || fourLetterOne == randomLetterFour || fourLetterOne == randomLetterFive)
            {
                fourLetterOneColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fourLetterOneColor = Color.white.opacity(0.64)
            }
            
            if (fourLetterTwo == randomLetterTwo)
            {
                fourLetterTwoColor = Color.green
            }
            else if (fourLetterTwo  == randomLetterOne || fourLetterTwo == randomLetterThree || fourLetterTwo == randomLetterFour || fourLetterTwo == randomLetterFive)
            {
                fourLetterTwoColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fourLetterTwoColor = Color.white.opacity(0.64)
            }
            
            if (fourLetterThree == randomLetterThree)
            {
                fourLetterThreeColor = Color.green
            }
            else if (fourLetterThree  == randomLetterTwo || fourLetterThree == randomLetterOne || fourLetterThree == randomLetterFour || fourLetterThree == randomLetterFive)
            {
                fourLetterThreeColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fourLetterThreeColor = Color.white.opacity(0.64)
            }
            
            if (fourLetterFour == randomLetterFour)
            {
                fourLetterFourColor = Color.green
            }
            else if (fourLetterFour  == randomLetterTwo || fourLetterFour == randomLetterThree || fourLetterFour == randomLetterOne || fourLetterFour == randomLetterFive)
            {
                fourLetterFourColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fourLetterFourColor = Color.white.opacity(0.64)
            }
            
            if (fourLetterFive == randomLetterFive)
            {
                fourLetterFiveColor = Color.green
            }
            else if (fourLetterFive  == randomLetterTwo || fourLetterFive == randomLetterThree || fourLetterFive == randomLetterOne || fourLetterFive == randomLetterFour)
            {
                fourLetterFiveColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fourLetterFiveColor = Color.white.opacity(0.64)
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
        else if index == 5
        {
            fiveLetterOne = String(seperatedInputs[0].uppercased())
            fiveLetterTwo = String(seperatedInputs[1].uppercased())
            fiveLetterThree = String(seperatedInputs[2].uppercased())
            fiveLetterFour = String(seperatedInputs[3].uppercased())
            fiveLetterFive = String(seperatedInputs[4].uppercased())
            
            if (fiveLetterOne == randomLetterOne)
            {
                fiveLetterOneColor = Color.green
            }
            else if (fiveLetterOne  == randomLetterTwo || fiveLetterOne == randomLetterThree || fiveLetterOne == randomLetterFour || fiveLetterOne == randomLetterFive)
            {
                fiveLetterOneColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fiveLetterOneColor = Color.white.opacity(0.64)
            }
            
            if (fiveLetterTwo == randomLetterTwo)
            {
                fiveLetterTwoColor = Color.green
            }
            else if (fiveLetterTwo  == randomLetterOne || fiveLetterTwo == randomLetterThree || fiveLetterTwo == randomLetterFour || fiveLetterTwo == randomLetterFive)
            {
                fiveLetterTwoColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fiveLetterTwoColor = Color.white.opacity(0.64)
            }
            
            if (fiveLetterThree == randomLetterThree)
            {
                fiveLetterThreeColor = Color.green
            }
            else if (fiveLetterThree  == randomLetterTwo || fiveLetterThree == randomLetterOne || fiveLetterThree == randomLetterFour || fiveLetterThree == randomLetterFive)
            {
                fiveLetterThreeColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fiveLetterThreeColor = Color.white.opacity(0.64)
            }
            
            if (fiveLetterFour == randomLetterFour)
            {
                fiveLetterFourColor = Color.green
            }
            else if (fiveLetterFour  == randomLetterTwo || fiveLetterFour == randomLetterThree || fiveLetterFour == randomLetterOne || fiveLetterFour == randomLetterFive)
            {
                fiveLetterFourColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fiveLetterFourColor = Color.white.opacity(0.64)
            }
            
            if (fiveLetterFive == randomLetterFive)
            {
                fiveLetterFiveColor = Color.green
            }
            else if (fiveLetterFive  == randomLetterTwo || fiveLetterFive == randomLetterThree || fiveLetterFive == randomLetterOne || fiveLetterFive == randomLetterFour)
            {
                fiveLetterFiveColor = Color.yellow.opacity(0.9)
            }
            else
            {
                fiveLetterFiveColor = Color.white.opacity(0.64)
            }
            
            index += 1
            
            if guess.lowercased() == randomWord.lowercased()
            {
                guess = ""
                guessesVisual = "The word was \(randomWord.uppercased())"
                buttonText = "End Game"
                lockInput = true;
                winCount = 1
            }
            else
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
//        randomWord = String(randomWords.wordData[randomIndex].fiveLetterWords)
        randomWord = String(randomWords.wordData[0].fiveLetterWords)
        generatedrandomWord = true
    }
}

struct FiveWordWordle_Previews: PreviewProvider
{
    static var previews: some View
    {
        FiveWordWordle()
    }
}
