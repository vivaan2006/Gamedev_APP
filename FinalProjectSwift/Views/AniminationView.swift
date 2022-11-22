//
//  Animination.swift
//  FinalProjectSwift
//
//  Created by Mccarthy, Wallace on 11/22/22.
//

//
//  Animation.swift
//  FinalProjectSwift
//
//  Created by Mccarthy, Wallace on 11/22/22.
//

import SwiftUI

struct AniminationView: View
{
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View
    {
        if isActive
        {
            HomeScreenView()
        }
        else
        {
            ZStack
            {
                Color.blue
                    .ignoresSafeArea(.all)
                    .opacity(0.3)
                VStack
                {
                    VStack
                    {
                        Image(systemName: "w.square.fill")
                            .foregroundColor(.red)
                            .font(.system(size: 60))
                        Text("Wordle Doodle")
                            .font(Font.custom("Baskerville-Bold", size: 26))
                            .foregroundColor(.black.opacity(0.80))
                        Text("")
                            .padding()
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear
                    {
                        withAnimation(.easeIn(duration: 1.2))
                        {
                            self.size = 1.7
                            self.opacity = 1.0
                            
                        }
                    }
                }
                .onAppear
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2)
                    {
                        withAnimation
                        {
                            isActive = true
                        }
                    }
                }
            }
        }

        
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        AniminationView()
    }
}
