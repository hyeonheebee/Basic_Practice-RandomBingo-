//
//  main.swift
//  RandomBingo
//
//  Created by 심현희 on 2023/09/17.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChoice:Int = 0
    while true {
        let userInput = readLine()
        if let input = userInput {
            if let numInput = Int(input) {
                myChoice = numInput
            }
        }
        
        if computerChoice > myChoice {
            print("UP")
        } else if computerChoice < myChoice {
            print("DOWN")
        } else {
            print("CORRECT!")
            computerChoice = Int.random(in: 1...100) //추가기능 무한 게임하기 
        }

}

