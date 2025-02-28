//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImages = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    var leftImageIndex = 0
    var rightImageIndex = 5
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got pressed")
        diceImageView1.image = diceImages.randomElement()!
        diceImageView2.image = diceImages.randomElement()!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = diceImages[leftImageIndex]
        diceImageView2.image = diceImages[rightImageIndex]
    }


}

