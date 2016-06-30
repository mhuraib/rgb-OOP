//
//  Character.swift
//  rgboop
//
//  Created by Mohammed Huraib on 6/30/16.
//  Copyright © 2016 Mohammed Huraib. All rights reserved.
//

import Foundation

class Character {
    
    private var _name : String!
    private var _hp : Int!
    private var _attackPower = 0
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
    var catchPhrase : String {
        get{
            return _catchPhrase
        }
        set(newCatchPhrase){
            _catchPhrase = newCatchPhrase
        }
    }
    
  
    init (name : String)
    {
        _name = name
    }
    init (name : String, hp : Int, catchPhrase : String, attackPower : Int){
        _name = name
        _hp = hp
        _attackPower = attackPower
        _catchPhrase = catchPhrase
        
    }
    
    func attemptAttack(attackPower : Int) {
        _hp = _hp - attackPower
    }
    
    
}