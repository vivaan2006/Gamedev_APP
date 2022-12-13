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
import AVKit

struct AniminationView: View
{
    @State var audioPlayer: AVAudioPlayer!
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.1
    var body: some View
    {
        
        if isActive
        {
//            self.audioPlayer.play()
            HomeScreenView()
        }
        else
        {
            ZStack
            {
                Color.brown
                    .ignoresSafeArea(.all)
                
                
                VStack
                {
                    VStack
                    {
                        Image(systemName: "w.square.fill")
                            .foregroundColor(.orange.opacity(0.5))
                            .font(.system(size: 60))
                        Text("Wordle Doodle")
                            .font(Font.custom("Courier New Bold", size: 26))
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
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.3)
                    {
                        withAnimation
                        {
                            isActive = true
                        }
                    }
                }
            }
        }
//            .onAppear
//        {
//            let sound = Bundle.main.path(forResource: "song", ofType: "mp3")
//                        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//        }
        
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        AniminationView()
    }
}
