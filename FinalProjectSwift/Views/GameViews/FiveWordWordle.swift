//
//  FiveWordWordle.swift
//  FinalProjectSwift
//
//  Created by Mccarthy, Wallace on 11/22/22.
//

import SwiftUI

struct FiveWordWordle: View
{
    @State private var index = 0
    
    @State private var letterOne = ""
    @State private var letterTwo = ""
    @State private var letterThree = ""
    @State private var letterFour = ""
    @State private var letterFive = ""
    
    @State private var oneLetterOne = ""
    @State private var oneLetterTwo = ""
    @State private var oneLetterThree = ""
    @State private var oneLetterFour = ""
    @State private var oneLetterFive = ""
    
    @State private var twoLetterOne = ""
    @State private var twoLetterTwo = ""
    @State private var twoLetterThree = ""
    @State private var twoLetterFour = ""
    @State private var twoLetterFive = ""
    
    @State private var threeLetterOne = ""
    @State private var threeLetterTwo = ""
    @State private var threeLetterThree = ""
    @State private var threeLetterFour = ""
    @State private var threeLetterFive = ""
    
    @State private var fourLetterOne = ""
    @State private var fourLetterTwo = ""
    @State private var fourLetterThree = ""
    @State private var fourLetterFour = ""
    @State private var fourLetterFive = ""
    
    @State private var fiveLetterOne = ""
    @State private var fiveLetterTwo = ""
    @State private var fiveLetterThree = ""
    @State private var fiveLetterFour = ""
    @State private var fiveLetterFive = ""
    
    
    @State private var guess = ""
    //  @State private var guessesLeft = 0
    //  @State private var guessVisual = ""
    @State private var error = false
    @State private var lockInput = false
    @State private var toEndScreenWin = false
    @State private var toEndScreenFail = false
    
    
    var body: some View
    {
        if toEndScreenWin
        {
            
        }
        else if toEndScreenFail
        {
            
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
                        let guessesLeft = 6 - index
                        let guessVisual = "You have \(guessesLeft) guesses left"
                        Text("Five Letter Wordle")
                            .font(Font.custom("Courier New Bold", size: 35))
                        HStack {
                            TextField("", text: $letterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $letterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $letterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $letterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $letterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        
                        HStack
                        {
                            TextField("", text: $oneLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $oneLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $oneLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $oneLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $oneLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        
                        HStack
                        {
                            TextField("", text: $twoLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $twoLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $twoLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $twoLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $twoLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        
                        HStack
                        {
                            TextField("", text: $threeLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $threeLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $threeLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $threeLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $threeLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        
                        HStack
                        {
                            TextField("", text: $fourLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fourLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fourLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fourLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fourLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        
                        HStack
                        {
                            TextField("", text: $fiveLetterOne)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fiveLetterTwo)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fiveLetterThree)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fiveLetterFour)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                            TextField("", text: $fiveLetterFive)
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.white.opacity(0.34))
                                .cornerRadius(10)
                                .disabled(true)
                        }
                        
                        
                        if error == true
                        {
                            Text("Your Guess must be 5 characters long!")
                                .font(Font.custom("Courier New Bold", size: 15))
                                .foregroundColor(.orange)
                        }
                        TextField("Your Guess", text: $guess)
                            .padding()
                            .frame(width: 300, height: 70)
                            .background(Color.white.opacity(0.34))
                            .cornerRadius(10)
                            .disabled(lockInput)
                        
                        Button("Enter")
                        {
                            checkWordLength()
                            checkWord()
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
        if (guess.count > 5)
        {
            error = true
        }
        else
        {
            error = false
        }
        
    }
    
    
    func checkWord() -> Void
    {
        let seperatedInputs = Array(guess)
        if index == 0
        {
            letterOne = String(seperatedInputs[0])
            letterTwo = String(seperatedInputs[1])
            letterThree = String(seperatedInputs[2])
            letterFour = String(seperatedInputs[3])
            letterFive = String(seperatedInputs[4])
            
            index += 1
            guess = ""
        }
        else if index == 1
        {
            oneLetterOne = String(seperatedInputs[0])
            oneLetterTwo = String(seperatedInputs[1])
            oneLetterThree = String(seperatedInputs[2])
            oneLetterFour = String(seperatedInputs[3])
            oneLetterFive = String(seperatedInputs[4])
            
            index += 1
            guess = ""
        }
        else if index == 2
        {
            twoLetterOne = String(seperatedInputs[0])
            twoLetterTwo = String(seperatedInputs[1])
            twoLetterThree = String(seperatedInputs[2])
            twoLetterFour = String(seperatedInputs[3])
            twoLetterFive = String(seperatedInputs[4])
            
            index += 1
            guess = ""
        }
        else if index == 3
        {
            threeLetterOne = String(seperatedInputs[0])
            threeLetterTwo = String(seperatedInputs[1])
            threeLetterThree = String(seperatedInputs[2])
            threeLetterFour = String(seperatedInputs[3])
            threeLetterFive = String(seperatedInputs[4])
            
            index += 1
            guess = ""
        }
        else if index == 4
        {
            fourLetterOne = String(seperatedInputs[0])
            fourLetterTwo = String(seperatedInputs[1])
            fourLetterThree = String(seperatedInputs[2])
            fourLetterFour = String(seperatedInputs[3])
            fourLetterFive = String(seperatedInputs[4])
            
            index += 1
            guess = ""
        }
        else if index == 5
        {
            fiveLetterOne = String(seperatedInputs[0])
            fiveLetterTwo = String(seperatedInputs[1])
            fiveLetterThree = String(seperatedInputs[2])
            fiveLetterFour = String(seperatedInputs[3])
            fiveLetterFive = String(seperatedInputs[4])
            
            index += 1
            guess = ""
        }
    }
}
    
    struct FiveWordWordle_Previews: PreviewProvider
    {
        static var previews: some View
        {
            FiveWordWordle()
        }
    }

