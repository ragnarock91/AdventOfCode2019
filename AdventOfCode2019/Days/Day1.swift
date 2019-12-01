//
//  Day1.swift
//  AdventOfCode2019
//
//  Created by Ricardo on 1.12.2019.
//  Copyright © 2019 ragnarock91. All rights reserved.
//

import Foundation

//The Tyranny of the Rocket Equation

class Day1: AdventDay {

    var dayInput: String = "Day1"
    
    //pass the full input
    func solveFirstPart(with input: [String]) -> String {
        var totalFuel: Double = 0
        for value in input {
            let moduleFuel = floor(Double(value)!/Double(3)) - 2
             totalFuel += moduleFuel
        }
        return "\(totalFuel)"
    }
    
    //pass the full input
    func solveSecondPart(with input: [String]) -> String {
        var totalFuel: Double = 0
        for value in input {
            let moduleFuel = floor(Double(value)!/Double(3)) - 2
             totalFuel += moduleFuel + calculateExtraFuel(with: moduleFuel)
        }
        return "\(totalFuel)"
    }
    
    func calculateExtraFuel(with input: Double) -> Double {
        let fuel = floor(input/3) - 2
        if fuel <= 0 {
            return 0
        } else {
            return fuel + calculateExtraFuel(with: fuel)
        }
    }
    
    

}
