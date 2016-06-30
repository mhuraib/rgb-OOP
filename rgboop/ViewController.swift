//
//  ViewController.swift
//  rgboop
//
//  Created by Mohammed Huraib on 6/29/16.
//  Copyright © 2016 Mohammed Huraib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var attackbgImage: UIImageView!
    @IBOutlet weak var attackButton: UIButton!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    @IBOutlet weak var enemyHPLabel: UILabel!
    var newEnemyHP = 100
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func attackPressed(sender: AnyObject) {
        
        newEnemyHP -= 15
        if newEnemyHP > 0
        {
           enemyHPLabel.text = "\(newEnemyHP) HP"
        }
        else
        {
           
           chestButton.hidden = false
            enemyImage.hidden = true
            attackButton.hidden = true
            attackbgImage.hidden = true
            enemyHPLabel.hidden = true
           
        }
        
        
    }
    @IBAction func chestPressed(sender: AnyObject) {
        
        chestButton.hidden=true
        enemyImage.hidden=false
        attackButton.hidden = false
        attackbgImage.hidden = false
        enemyHPLabel.hidden = false
        newEnemyHP = 100
        enemyHPLabel.text = "\(newEnemyHP) HP"
        
    }
  

}

