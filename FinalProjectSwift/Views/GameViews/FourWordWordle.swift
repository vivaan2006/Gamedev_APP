//
//  FourWordWordle.swift
//  FinalProjectSwift
//
//  Created by Mccarthy, Wallace on 11/22/22.
//

import SwiftUI

struct FourWordWordle: View
{
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
    
    @State private var sixLetterOne = ""
    @State private var sixLetterTwo = ""
    @State private var sixLetterThree = ""
    @State private var sixLetterFour = ""

    @State private var guess = ""
    @State private var error = false

    var body: some View
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
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                    }
                    HStack {
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                    }
                    HStack {
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                    }
                    HStack {
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                    }
                    HStack {
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                    }
                    HStack {
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
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
                    TextField("Your Guess", text: $guess)
                        .padding()
                        .frame(width: 300, height: 70)
                        .background(Color.white.opacity(0.34))
                    .cornerRadius(10)
                    
                    Button("Enter")
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
    
    func checkWordLength() -> Void
    {
        if (guess.count > 4)
        {
            error = true
        }
        else
        {
            error = false
        }
        
    }
}

struct FourWordWordle_Previews: PreviewProvider {
    static var previews: some View {
        FourWordWordle()
    }
}
