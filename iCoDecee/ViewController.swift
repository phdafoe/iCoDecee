//
//  ViewController.swift
//  iCoDecee
//
//  Created by Andres Felipe Ocampo Eljaiesk on 1/5/18.
//  Copyright © 2018 icologic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Local Variables
    var randomDiceIndex1 = 0
    var randomDiceIndex2 = 0
    
    //MARK: - IBOutlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //MARK: - IBActions
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: NSString(format: "dice%d", randomDiceIndex1) as String)
        diceImageView2.image = UIImage(named: NSString(format: "dice%d", randomDiceIndex2) as String)
    }
    
    

    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = UIImage(named: "dice1")
        diceImageView2.image = UIImage(named: "dice1")
        // Do any additional setup after loading the view, typically from a nib.
    }

    


}

