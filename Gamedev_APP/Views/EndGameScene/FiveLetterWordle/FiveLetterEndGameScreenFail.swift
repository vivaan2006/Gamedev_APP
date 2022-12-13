//
//  FiveLetterEndGameScreenFail.swift
//  FinalProjectSwift
//
//  Created by Wallace McCarthy on 11/24/22.
//

import SwiftUI

struct FiveLetterEndGameScreenFail: View
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
            FiveWordWordle()
        }
        else
        {
            ZStack
            {
                Color.brown
                    .ignoresSafeArea(.all)
                VStack
                {
                    Text("You Failed!")
                        .padding()
                        .font(Font.custom("Courier New Bold", size: 35))
                    Text("The word was \(fiveLetterRandomWord)")
                        .padding()
                        .font(Font.custom("Courier New Bold", size: 25))
                    Text("You have won \(winCount) games")
                        .padding()
                        .font(Font.custom("Courier New Bold", size: 25))
                    
                    Button("Play Again")
                    {
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
}

struct FiveLetterEndGameScreenFail_Previews: PreviewProvider {
    static var previews: some View {
        FiveLetterEndGameScreenFail()
    }
}
