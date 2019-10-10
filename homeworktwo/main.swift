//
//  main.swift
//  homeworktwo
//
//  Created by Nikita Boiko on 10/10/2019.
//  Copyright © 2019 Nikita Boiko. All rights reserved.
//

import Foundation

func evenNum(number: Int, devider: Int) -> Bool {
    var isEven = false
    if number % devider == 0 {
        isEven = true
    }
    return isEven
}

print("Введите число:")
var currentNum: Int = Int(readLine() ?? "0") ?? 0
print("Число \(currentNum) \(evenNum(number: currentNum, devider: 2) ? "четное" : "нечетное") ")

print("Введите число:")
currentNum = Int(readLine() ?? "0") ?? 0
print("Число \(currentNum) \(evenNum(number: currentNum, devider: 3) ? "" : "не") делится без остатка на 3")

