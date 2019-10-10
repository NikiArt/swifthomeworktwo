//
//  main.swift
//  homeworktwo
//
//  Created by Nikita Boiko on 10/10/2019.
//  Copyright © 2019 Nikita Boiko. All rights reserved.
//

import Foundation
var myArray: [Int] = []

func remDevider(number: Int, devider: Int) -> Bool {
    var isRemainder = false
    if number % devider == 0 {
        isRemainder = true
    }
    return isRemainder
}

func delElementOfArray(element: Int) {
    if let index = myArray.firstIndex(of: element) {
        myArray.remove(at: index)
    }
}

func fibonachiNum(currentArray: inout [Double]){
    if currentArray.count == 0 {
        currentArray.append(0)
    } else if currentArray.count == 1 {
        currentArray.append(1)
    } else {
        let numberOne = currentArray.last ?? 0
        let numberTwo = currentArray[currentArray.count - 2]
        let currentNumber = numberOne + numberTwo
        currentArray.append(currentNumber)
    }
    
}

print("Введите число:")
var currentNum: Int = Int(readLine() ?? "0") ?? 0
print("Число \(currentNum) \(remDevider(number: currentNum, devider: 2) ? "четное" : "нечетное") ")

print("Введите число:")
currentNum = Int(readLine() ?? "0") ?? 0
print("Число \(currentNum) \(remDevider(number: currentNum, devider: 3) ? "" : "не") делится без остатка на 3")

myArray.removeAll()
for i in (1...100) {
    myArray.append(i)
}
for element in myArray {
    if !remDevider(number: element, devider: 3) {
        delElementOfArray(element: element)
        continue
    }
    if remDevider(number: element, devider: 2) {
        delElementOfArray(element: element)
    }
    
}
print(myArray)

var fibbonachiArray = [Double]()
for _ in (1...100) {
    fibonachiNum(currentArray: &fibbonachiArray)
}
print(fibbonachiArray)
