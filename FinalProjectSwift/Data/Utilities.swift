//
//  Utilities.swift
//  FinalProjectSwift
//
//  Created by Wallace McCarthy on 11/23/22.
//

import Foundation

let demoWords : Words = Words(fourLetterWords: "help", fiveLetterWords: "hello", sixLetterWords: "monkey")

func loadJSON (from file: String) -> [Any]
{
    if let dataSourceURL = Bundle.main.url(forResource: file, withExtension: "json")
    {
        let data = try! Data(contentsOf: dataSourceURL)
        let decoder = JSONDecoder()
        do
        {
            if(file == "wordData")
            {
                let results = try decoder.decode([Words].self, from: data)
                return results
            }
            else if (file == "AllWords")
            {
                let results = try decoder.decode([AllWords].self, from: data)
                return results
            }
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
    return [Any]() // major data load falure!!!!!!!!!!!!
}
