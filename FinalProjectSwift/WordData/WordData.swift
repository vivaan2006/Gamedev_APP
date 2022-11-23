//
//  WordData.swift
//  FinalProjectSwift
//
//  Created by Wallace McCarthy on 11/23/22.
//

import Foundation

func loadWords() -> [Word]
{
    var wordItems : [Word] = []
    let fourLetterWords: [String] =
    [
        
    ]
    let fiveLetterWords: [String] =
    [
        
    ]
    let sixLetterWords: [String] =
    [
        
    ]
    
    for index in 0 ..< 3
    {
        wordItems.append(Word(fourLetterWords: fourLetterWords[index], fiveLetterWords: fiveLetterWords[index], sixLetterWords: sixLetterWords[index]))
    }
    
    return wordItems
}
