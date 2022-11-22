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
    
    var body: some View
    {
        VStack
        {
            Text("Wordle Doodle")
                .padding()
            HStack
            {
                Button("4 Letters")
                {
                    toFourLetterWordle = true
                }
                .foregroundColor(.white)
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
               
                Button("5 Letters")
                {
                    toFiveLetterWordle = true
                }
                .foregroundColor(.white)
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
              
                Button("6 Letters")
                {
                    toSixLetterWordle = true
                }
                .foregroundColor(.white)
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
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
