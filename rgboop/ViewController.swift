//
//  ViewController.swift
//  rgboop
//
//  Created by Mohammed Huraib on 6/29/16.
//  Copyright © 2016 Mohammed Huraib. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var attackbgImage: UIImageView!
    @IBOutlet weak var attackButton: UIButton!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    @IBOutlet weak var enemyHPLabel: UILabel!
    @IBOutlet weak var catchPhraseLabel: UILabel!
    
    //Properties
    var currentEnemy : Character!
    var player1 = Player(playerName : "Mhuraib")
    var chestButtonSound = AVAudioPlayer()
    var attackButtonSound = AVAudioPlayer()
    var deathSound = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chestButtonSound = createSoundButton("cash_register2",fileType: "wav")
        attackButtonSound = createSoundButton("Sword1",fileType: "wav")
        deathSound = createSoundButton("death", fileType: "mp3")
        
        
        selectRandomEnemy()
        updateEnemyHP()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func attackPressed(sender: AnyObject) {
        attackButtonSound.play()
        currentEnemy.attemptAttack(player1.attackPower)
        if currentEnemy.hp > 0
        {
           updateEnemyHP()
        }
        else
        {
           deathSound.play()
           chestButton.hidden = false
            enemyImage.hidden = true
            attackButton.hidden = true
            attackbgImage.hidden = true
            enemyHPLabel.hidden = true
           
        }
        
        
    }
    @IBAction func chestPressed(sender: AnyObject) {
        chestButtonSound.play()
        chestButton.hidden=true
        enemyImage.hidden=false
        attackButton.hidden = false
        attackbgImage.hidden = false
        enemyHPLabel.hidden = false
        selectRandomEnemy()
        
        
    }
    
    func selectRandomEnemy () ->Character{
        let randomEnemyIndex = Int(arc4random_uniform(UInt32(2)))
        if randomEnemyIndex == 1{
            currentEnemy = Joker()
            enemyImage.image = UIImage(named:"enem1")
        }
        else
        {
            currentEnemy = Fatjoe()
            enemyImage.image = UIImage(named:"enem2")
        }
        catchPhraseLabel.text = currentEnemy.catchPhrase
        updateEnemyHP()
        return currentEnemy
        
    }
    func updateEnemyHP(){
        enemyHPLabel.text = "\(currentEnemy.hp) HP"
    }
    
    func createSoundButton(audioFileName : String, fileType : String) ->AVAudioPlayer{
        let btnSound : AVAudioPlayer!
        let path = NSBundle.mainBundle().pathForResource(audioFileName, ofType: fileType)
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
            return btnSound
        } catch let err as NSError {
            print(err.debugDescription)
        }
        return AVAudioPlayer()
        
    }
    
  

}

