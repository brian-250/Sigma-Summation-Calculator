//
//  ViewController.swift
//  Sigma Summation Calculator
//
//  Created by csuftitan on 11/7/23.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lastValue: UITextField!
    @IBOutlet weak var beginValue: UITextField!
    @IBOutlet weak var expressionField: UITextField!
    @IBOutlet weak var displaySolution: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lastValue.delegate = self
        lastValue.placeholder = "Enter a number"
        expressionField.delegate = self
        expressionField.placeholder = "Enter an expression"
        beginValue.delegate = self
        beginValue.placeholder = "Enter a number"
    }
    @IBAction func clearTextFields(_ sender: Any) {
    }
    @IBAction func divideNumbers(_ sender: Any) {
    }
    @IBAction func multiplyNumbers(_ sender: Any) {
    }
    @IBAction func subtractNumbers(_ sender: Any) {
    }
    @IBAction func addNumbers(_ sender: Any) {
    }
    @IBAction func solveMathProblem(_ sender: Any) {
        guard let firstText = beginValue.text, let lastText = lastValue.text, let expressionText = expressionField.text else { return }

        guard let firstNum = Int(firstText), let lastNum = Int(lastText) else { return }

        var total = 0

        let sequence = stride(from: firstNum, to: (lastNum+1), by: 1)

        for number in sequence {
            let replacedExpression = expressionText.replacingOccurrences(of: "i", with: String(number))
            let expressionToEvaluate = NSExpression(format: replacedExpression)
            if let result = expressionToEvaluate.expressionValue(with: nil, context: nil) as? Double {
                total += Int(result)
            }
        }
        // Update the displaySolution label with the total
        displaySolution.text = "Total: \(total)"
    }


    @IBAction func addDecimalToNumbers(_ sender: Any) {
    }
    @IBAction func displayNumberNine(_ sender: Any) {
    }
    @IBAction func displayNumberEight(_ sender: Any) {
    }
    @IBAction func displayNumberSeven(_ sender: Any) {
    }
    @IBAction func displayNumberSix(_ sender: Any) {
    }
    @IBAction func displayNumberFive(_ sender: Any) {
    }
    @IBAction func displayNumberFour(_ sender: Any) {
    }
    @IBAction func displayNumberThree(_ sender: Any) {
    }
    @IBAction func displayNumberTwo(_ sender: Any) {
    }
    @IBAction func displayNumberOne(_ sender: Any) {
    }
    @IBAction func displayNumberZero(_ sender: Any) {
    }
}

