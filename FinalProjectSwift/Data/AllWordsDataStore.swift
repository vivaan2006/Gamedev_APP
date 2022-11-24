//
//  AllWordsDataStore.swift
//  FinalProjectSwift
//
//  Created by Wallace McCarthy on 11/23/22.
//

import Foundation

import Combine

class AllWordsDataStore : ObservableObject
{
    @Published var allWordData : [AllWords]
    {
        didSet
        {
            let encoder = JSONEncoder()
            if let encodedWord = try? encoder.encode(allWordData)
            {
                UserDefaults.standard.set(encodedWord, forKey: "AllWords")
            }
        }
    }



    init (allWordData : [AllWords])
    {
        if let storedOnDevice = UserDefaults.standard.data(forKey: "AllWords")
        {
            let decoder = JSONDecoder()
            if let savedWords = try? decoder.decode([AllWords].self, from: storedOnDevice)
            {
                if (savedWords.count != 80)
                {
                    self.allWordData = savedWords
                    return
                }
            }
        }
        self.allWordData = allWordData
    }
}

