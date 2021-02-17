//
//  ViewController.swift
//  RockPaperScissorsGame
//
//  Created by Calvin Wood on 2/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    @IBOutlet weak var lizardButton: UIButton!
    @IBOutlet weak var spockButton: UIButton!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var selection = ""
    var output = ""
    var winner = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rockButtonPressed(_ sender: Any) {
        selection = "Rock"
        outcome()
        outputLabel.text = output
        winnerLabel.text = winner
    }
    @IBAction func paperButtonPressed(_ sender: Any) {
        selection = "Paper"
        outcome()
        outputLabel.text = output
        winnerLabel.text = winner
    }
    @IBAction func scissorsButtonPressed(_ sender: Any) {
        selection = "Scissors"
        outcome()
        outputLabel.text = output
        winnerLabel.text = winner
    }
    @IBAction func lizardButtonPressed(_ sender: Any) {
        selection = "Lizard"
        outcome()
        outputLabel.text = output
        winnerLabel.text = winner
    }
    @IBAction func spockButtonPressed(_ sender: Any) {
        selection = "Spock"
        outcome()
        outputLabel.text = output
        winnerLabel.text = winner
    }
    
    func outcome() {
        let array = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
        let randomAction = array.randomElement()!
        
        output = ("You choose: \(selection), which is going up against: \(randomAction)")
        if selection == "Rock" && randomAction == "Rock" {
            winner = ("Its a draw!!")
        }
        if selection == "Rock" && randomAction == "Paper" {
            winner = ("You're a loser")
        }
        if selection == "Rock" && randomAction == "Scissors" {
            winner = ("You're a WINNER!!")
        }
        if selection == "Rock" && randomAction == "Lizard" {
            winner = ("You're a WINNER!!")
        }
        if selection == "Rock" && randomAction == "Spock" {
            winner = ("You're a loser")
        }

        //If you selected Paper this will determine your outcome.
        if selection == "Paper" && randomAction == "Paper" {
            winner = ("Its a draw!!")
        }
        if selection == "Paper" && randomAction == "Rock" {
            winner = ("You're a WINNER!!")
        }
        if selection == "Paper" && randomAction == "Scissors" {
            winner = ("You're a loser")
        }
        if selection == "Paper" && randomAction == "Lizard" {
            winner = ("You're a loser")
        }
        if selection == "Paper" && randomAction == "Spock" {
            winner = ("You're a WINNER!!")
        }

        //If you selected Scissors this will determine your outcome.
        if selection == "Scissors" && randomAction == "Scissors" {
            winner = ("Its a draw!!")
        }
        if selection == "Scissors" && randomAction == "Paper" {
            winner = ("You're a WINNER")
        }
        if selection == "Scissors" && randomAction == "Rock" {
            winner = ("You're a loser")
        }
        if selection == "Scissors" && randomAction == "Lizard" {
            winner = ("You're a WINNER")
        }
        if selection == "Scissors" && randomAction == "Spock" {
            winner = ("You're a loser")
        }

        //If you selected Lizard this will determine your outcome.
        if selection == "Lizard" && randomAction == "Lizard" {
            winner = ("Its a draw!!")
        }
        if selection == "Lizard" && randomAction == "Paper" {
            winner = ("You're a WINNER")
        }
        if selection == "Lizard" && randomAction == "Rock" {
            winner = ("You're a loser")
        }
        if selection == "Lizard" && randomAction == "Scissors" {
            winner = ("You're a loser")
        }
        if selection == "Lizard" && randomAction == "Spock" {
            winner = ("You're a WINNER")
        }

        //If you selected Spock this will determine your outcome.
        if selection == "Spock" && randomAction == "Spock" {
            winner = ("Its a draw!!")
        }
        if selection == "Spock" && randomAction == "Paper" {
            winner = ("You're a loser")
        }
        if selection == "Spock" && randomAction == "Rock" {
            winner = ("You're a WINNER")
        }
        if selection == "Spock" && randomAction == "Scissors" {
            winner = ("You're a WINNER")
        }
        if selection == "Spock" && randomAction == "Lizard" {
            winner = ("You're a loser")
        }
    }
    
}

