//
//  EndScreenFail.swift
//  FinalProjectSwift
//
//  Created by Wallace McCarthy on 11/22/22.
//

import SwiftUI

struct FourLetterEndScreenFail: View
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
            FourWordWordle()
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
                    Text("The word was \(fourLetterRandomWord)")
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


struct EndScreenFail_Previews: PreviewProvider {
    static var previews: some View {
        FourLetterEndScreenFail()
    }
}
