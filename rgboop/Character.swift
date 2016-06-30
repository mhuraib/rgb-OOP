//
//  Character.swift
//  rgboop
//
//  Created by Mohammed Huraib on 6/30/16.
//  Copyright © 2016 Mohammed Huraib. All rights reserved.
//

import Foundation

class Character {
    
    private var _name : String
    private var _hp : Int!
    private var _attackPower : Int!
    private var _catchPhrase = "I will hunt you down"
    
    var name : String {
        
        get{
            return _name
        }
        set(newName){
            _name = newName
        }
    }
    var hp : Int {
        get{
            return _hp
        }
        set(newHp){
            _hp = newHp
        }
    }
    var attackPower : Int {
        get{
            return _attackPower
        }
        set(newAttackPower){
            _attackPower = newAttackPower
        }
    }
    
    init (name : String)
    {
        _name = name
    }
    
    func attemptAttack(attackPower : Int) -> Int {
        _hp = _hp - attackPower
        return _hp
    }
    
    
}