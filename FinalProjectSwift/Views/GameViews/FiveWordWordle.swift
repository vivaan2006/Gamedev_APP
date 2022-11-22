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
                }
            }
        }
    }
}

struct FiveWordWordle_Previews: PreviewProvider {
    static var previews: some View {
        FiveWordWordle()
    }
}
