//
//  SixLetterEndGameScreenWin.swift
//  FinalProjectSwift
//
//  Created by Wallace McCarthy on 11/24/22.
//

import SwiftUI

struct SixLetterEndGameScreenWin: View
{
    @State private var playAgain = false
    @State private var toHomeScreen = false
    var body: some View
    
    {
        if toHomeScreen
        {
            HomeScreenView()
        }
        else if playAgain
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
                    Text("You Won!")
                        .padding()
                        .font(Font.custom("Courier New Bold", size: 35))
                    Text("The word was \(sixLetterRandomWord)")
                        .padding()
                        .font(Font.custom("Courier New Bold", size: 25))
                    Text("You have won \(winCount) games")
                        .padding()
                        .font(Font.custom("Courier New Bold", size: 25))
                    
                    Button("Play Again")
                    {
                        winCountAddition()
                        playAgain = true
                    }
                    .padding(20)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .italic()
                    
                    Button("Home")
                    {
                        winCountAddition()
                        toHomeScreen = true
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
    
    func winCountAddition()
    {
        winCount += 1
    }
}

struct SixLetterEndGameScreenWin_Previews: PreviewProvider {
    static var previews: some View {
        SixLetterEndGameScreenWin()
    }
}
