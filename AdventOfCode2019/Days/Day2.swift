//
//  Day2.swift
//  AdventOfCode2019
//
//  Created by Ricardo on 2.12.2019.
//  Copyright © 2019 ragnarock91. All rights reserved.
//

import Foundation

class Day2: AdventDay {
    var dayInput: String = "Day2"
    
    func solveFirstPart(with originalInput: [String]) -> String {
        var input = formatInput(input: originalInput)
        var head = 0
        var inputA = 0
        var inputB = 0
        var output = 0
        
        while input[head] == 1 || input[head] == 2 {
            let positionA = input[head+1]
            inputA = input[positionA]

            let positionB = input[head+2]
            inputB = input[positionB]
            
            var result = 0
            if input[head] == 1 {
                result = inputA + inputB
            } else{
                result = inputA * inputB
            }
            
            let positionOutput = input[head+3]
            input[positionOutput] = result
            head += 4
        }

        if input[head] == 99 {
            print("correct end of execution")
            print(input)
        } else {
            print("there is an error")
        }


        return ""
    }
    
    func formatInput(input: [String]) -> [Int] {
        var commandsInput = [Int]()
        for command in (input.first?.split(separator: ","))! {
            commandsInput.append(Int(String(command))!)
        }
        return commandsInput
    }
}
