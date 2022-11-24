//
//  HomeScreenView.swift
//  FinalProjectSwift
//
//  Created by Zhang, Erin ling on 11/22/22.
//

import SwiftUI

struct HomeScreenView: View
{
    @State private var toFourLetterWordle = false
    @State private var toFiveLetterWordle = false
    @State private var toSixLetterWordle = false
    @State private var toCustomGame = false
    
    @State private var letterOneTest = "M"
    @State private var letterTwoTest = "O"
    @State private var letterThreeTest = "N"
    @State private var letterFourTest = "K"
    
    var body: some View
    {
        if toFourLetterWordle
        {
            FourWordWordle()
        }
        
        else if toFiveLetterWordle
        {
            FiveWordWordle()
        }
        
        else if toSixLetterWordle
        {
            SixWordWordle()
        }
      
        else
        {
            ZStack
            {
                Color.brown
                    .ignoresSafeArea(.all)
                
                VStack
                {
                    Text("Wordle Doodle")
                        .padding()
                        .font(Font.custom("Courier New Bold", size: 35))
                    Text("Win Count: \(winCount)")
                        .font(Font.custom("Courier New Bold", size: 20))
                    
                    Text("Wordle Doodle is a game created by Erin Zhang and Wallace McCarthy. It is based on the very popular New York Times game Wordle.")
                        .padding()
                        .font(Font.custom("Courier New Bold", size: 17))
//                    Text("Below are the rules for the game: ")
//                        .padding()
//                        .font(Font.custom("Courier New Bold", size: 18))
                    Text("How To Play")
                        .padding()
                        .font(Font.custom("Courier New Bold", size: 25))
                    Text("1. Each guess must be a word with the designnated number of letters.            2. The color of the tiles will change to show how close your guess was to the word Example:")
                        .padding()
                    .font(Font.custom("Courier New Bold", size: 14))
                    HStack
                    {
                        TextField("M", text: $letterOneTest)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.yellow.opacity(0.9))
                            .cornerRadius(10)
                            .disabled(true)
                            .font(Font.custom("Courier New Bold", size: 35))
                        
                        TextField("O", text: $letterTwoTest)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.green)
                            .cornerRadius(10)
                            .disabled(true)
                            .font(Font.custom("Courier New Bold", size: 35))
                        TextField("N", text: $letterThreeTest)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.64))
                            .cornerRadius(10)
                            .disabled(true)
                            .font(Font.custom("Courier New Bold", size: 35))
                        TextField("K", text: $letterFourTest)
                            .padding()
                            .frame(width: 70, height: 70)
                            .background(Color.white.opacity(0.64))
                            .cornerRadius(10)
                            .disabled(true)
                            .font(Font.custom("Courier New Bold", size: 35))
                        
                    }
                    Text("The correct word is COMP, so here the O is in the correct spot, highlighting it green, the M is in the word but not in the correct spot so it is highlighted yellow, and both N and K are not in the word so they are unhighlighted.                  Click one of the options below to begin! ")
                        .padding()
                    .font(Font.custom("Courier New Bold", size: 14))
//                    Button("Rules")
//                    {
//
//                    }
//                    .padding()
//                    .foregroundColor(.white)
//                    .frame(width: 100, height: 50)
//                    .background(Color.gray)
//                    .cornerRadius(10)
//                    .italic()
                    
                    HStack
                    {
                        Button("4 Letters")
                        {
                            toFourLetterWordle = true
                        }
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .italic()
                       
                        Button("5 Letters")
                        {
                            toFiveLetterWordle = true
                        }
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .italic()
                      
                        Button("6 Letters")
                        {
                            toSixLetterWordle = true
                        }
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .italic()
                    }
                        Button("Cutsom Game")
                        {
                            toCustomGame = true
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

struct HomeScreenView_Previews: PreviewProvider
{
    static var previews: some View
    {
        HomeScreenView()
    }
}
