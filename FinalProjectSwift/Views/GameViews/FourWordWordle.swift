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
                }
            }
        }
    }
}

struct FourWordWordle_Previews: PreviewProvider {
    static var previews: some View {
        FourWordWordle()
    }
}
