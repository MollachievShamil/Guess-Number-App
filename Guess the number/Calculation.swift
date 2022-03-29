//
//  Calculation.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 28.03.2022.
//

import Foundation


class Calculation {
    static var shared = Calculation()
   
    var randomNumber: Int!
    var computerGuessNumber = 0
    
    var leftBorder = -1000000
    var rightBorder = 1000000
    
    
    func numberIsLower() {
        rightBorder = computerGuessNumber
        calc()
    }
    
    func numberIsBigger() {
      leftBorder = computerGuessNumber
       calc()
    }
    
    func calc() {
        let array = Array(leftBorder ... rightBorder)
        let high = array.count - 1
        let low = 0
        let mid = (low + high) / 2
        computerGuessNumber = array[mid]
    }
    

    func getRandomNumber(){
        randomNumber = Int.random(in: -1000000 ... 1000000)
    }
    
    func prepareForNewGame() {
        leftBorder = -1000000
        rightBorder = 1000000
        computerGuessNumber = 0
    }
    
}
