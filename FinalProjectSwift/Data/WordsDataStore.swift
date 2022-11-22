//
//  WordsDataStore.swift
//  FinalProjectSwift
//
//  Created by Wallace McCarthy on 11/22/22.
//

import Foundation

import Combine
//
//class WordsDataStore : ObservableObject
//{
//    @Published var wordData : [Words]
//    {
//        didSet
//        {
//            let encoder = JSONEncoder()
//            if let encodedWord = try? encoder.encode(wordData)
//            {
//                UserDefaults.standard.set(encodedWord, forKey: "wordData")
//            }
//        }
//    }
//
//
//
//    init (schoolData : [Words])
//    {
//        if let storedOnDevice = UserDefaults.standard.data(forKey: "wordData")
//        {
//            let decoder = JSONDecoder()
//            if let savedWords = try? decoder.decode([Words].self, from: storedOnDevice)
//            {
//                if (savedWords.count != 80)
//                {
//                    self.wordData = savedWords
//                    return
//                }
//            }
//        }
//        self.wordData = wordData
//    }
//}
