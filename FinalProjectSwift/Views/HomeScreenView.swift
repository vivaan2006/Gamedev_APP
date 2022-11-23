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
    
    var body: some View
    {
        if toFourLetterWordle
        {
            FourWordWordle(wordRandom: demoWords)
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
