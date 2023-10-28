//
//  main.swift
//  RandomBingo
//
//  Created by 심현희 on 2023/09/17.
//

import Foundation

var computerChoice = Int.random(in: 1...100)

var myChoice:Int = 0
    // 반복의 조건이 정해져있을때 while / 반복의 횟수가 있다면 for
    while true {
        // readLine() 옵셔널 String 을 리턴함 
        let userInput = readLine()
        if let input = userInput {
            if let numInput = Int(input) {
                myChoice = numInput
            }
        }
        // if let input = userInput , let numInput = Int(input) 으로 조건 한줄로 써도 무관
        // 만약 guard let 바인딩으로 쓰고싶다면
        // guard let input = userInput, let numInput = Int(intput) else {
        // print("break")
        // break
        // }
        // myChoice = numInput
        
        if computerChoice > myChoice {
            print("UP")
        } else if computerChoice < myChoice {
            print("DOWN")
        } else {
            print("CORRECT!")
            computerChoice = Int.random(in: 1...100) //추가기능 무한 게임하기 
        }

}

