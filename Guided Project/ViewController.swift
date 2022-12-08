//
//  ViewController.swift
//  Guided Project
//
//  Created by Роман Архиреев on 07/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage0: UIImageView!
    @IBOutlet weak var diceImage1: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var pointsAdded: UILabel!
    
    @IBAction func onRollButton(_ sender: UIButton) {
        let diceImages = [
            #imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")
            ]
        
        let randInts = (
            Int.random(in: 0...5),
            Int.random(in: 0...5)
        )
        
        let actual_score = Int(
            (scoreLabel.text?.components(separatedBy: ": ")[1])!
        )
        
        let pts = (randInts.0 + randInts.1) + 2
        let sum = actual_score! + pts
        
        pointsAdded.text = "+\(pts)"
        scoreLabel.text = "Score: \(sum)"
        
        diceImage0.image = diceImages[randInts.0]
        diceImage1.image = diceImages[randInts.1]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

