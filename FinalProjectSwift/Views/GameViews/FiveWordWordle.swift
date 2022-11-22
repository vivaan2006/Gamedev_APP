//
//  FiveWordWordle.swift
//  FinalProjectSwift
//
//  Created by Mccarthy, Wallace on 11/22/22.
//

import SwiftUI

struct FiveWordWordle: View
{
    @State private var letterOne = ""
    @State private var letterTwo = ""
    @State private var letterThree = ""
    @State private var letterFour = ""
    @State private var letterFive = ""
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
                    Text("Five Letter Wordle")
                        .font(Font.custom("Courier New Bold", size: 35))
                    HStack {
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 60, height: 60)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 60, height: 60)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 60, height: 60)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
                            .padding()
                            .frame(width: 60, height: 60)
                            .background(Color.white.opacity(0.34))
                        .cornerRadius(10)
                    .disabled(true)
                        TextField("", text: $letterOne)
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
        if (guess.count > 5)
        {
            error = true
        }
        
    }
}

struct FiveWordWordle_Previews: PreviewProvider {
    static var previews: some View {
        FiveWordWordle()
    }
}
