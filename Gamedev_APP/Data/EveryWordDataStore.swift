//
//  EveryWordDataStore.swift
//  FinalProjectSwift
//
//  Created by Mccarthy, Wallace on 12/1/22.
//

import Foundation

import Combine

class EveryWordsDataStore : ObservableObject
{
    @Published var everyWordData : [EveryWord]
    {
        didSet
        {
            let encoder = JSONEncoder()
            if let encodedWord = try? encoder.encode(everyWordData)
            {
                UserDefaults.standard.set(encodedWord, forKey: "EveryWord")
            }
        }
    }



    init (everyWordData : [EveryWord])
    {
        if let storedOnDevice = UserDefaults.standard.data(forKey: "EveryWord")
        {
            let decoder = JSONDecoder()
            if let savedWords = try? decoder.decode([EveryWord].self, from: storedOnDevice)
            {
                if (savedWords.count != 80)
                {
                    self.everyWordData = savedWords
                    return
                }
            }
        }
        self.everyWordData = everyWordData
    }
}


