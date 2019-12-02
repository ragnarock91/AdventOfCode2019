//
//  ViewController.swift
//  AdventOfCode2019
//
//  Created by Ricardo on 1.12.2019.
//  Copyright © 2019 ragnarock91. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let adventDay = Day2()
        let input = readInput(for: adventDay.dayInput)
        let firstResult = adventDay.solveFirstPart(with: input)
    }

    
    func readInput(for day: String) -> [String] {
        do {
            if let path = Bundle.main.path(forResource: day, ofType: "input") {
                let file = try String(contentsOfFile: path)
                var text: [String] = file.components(separatedBy: "\n")
                text.removeLast()
                return text
            }
        } catch let error {
            Swift.print("Fatal Error: \(error.localizedDescription)")
        }
        return []
    }

}

