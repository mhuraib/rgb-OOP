//
//  Joker.swift
//  rgboop
//
//  Created by Mohammed Huraib on 6/30/16.
//  Copyright © 2016 Mohammed Huraib. All rights reserved.
//

import Foundation

class Joker : Character{
    
    convenience init(){
        self.init(name : "The JoKoR", hp : 120, catchPhrase : "You Will LAPUGH tO DeAtH ... Ha Ha HA", attackPower : 25)
    }
    
    
    override func attemptAttack(attackPower: Int) {
        if(attackPower<20)
        {
            super.hp += 5
            
        }
        else{
            super.attemptAttack(attackPower)
        }
    }
    
}
