//
//  ViewController.swift
//  DiceRoll
//
//  Created by JWang on 10/20/18.
//  Copyright © 2018 Jun Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var rollsLabel: UILabel!
    
    var diceImageView1ImgNbr = 1
    
    var diceImageView2ImgNbr = 1

    var nbrRolls : Int = 0
    
    var allScores : Int = 0
    
    let imageNameArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resetGame(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollDice(_ sender: Any) {
        
        nbrRolls += 1
        
        rollsLabel.text = String(nbrRolls)
        
        randomizeDiceImages()
    }
    
    @IBAction func resetGame(_ sender: Any) {
        randomizeDiceImages()
        
        nbrRolls = 0
        
        allScores = 0
        
        nbrRolls = 0
        
        scoreLabel.text = "0"
        
        rollsLabel.text = "0"

    }
    
    func randomizeDiceImages() -> Void {
        diceImageView1ImgNbr = Int(arc4random_uniform(UInt32(6)))
        
        diceImageView2ImgNbr = Int(arc4random_uniform(UInt32(6)))
        
        // the random numbers are generated from 0 to 5 for image index array;  need to increase by one for each.
        allScores += diceImageView1ImgNbr + 1 + diceImageView2ImgNbr + 1
        
        scoreLabel.text = String(allScores)
        
        diceImageView1.image = UIImage(named: imageNameArray[diceImageView1ImgNbr])
        
        diceImageView2.image = UIImage(named: imageNameArray[diceImageView2ImgNbr])
    }
    
    
}

