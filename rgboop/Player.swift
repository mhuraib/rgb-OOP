//
//  Player.swift
//  rgboop
//
//  Created by Mohammed Huraib on 6/30/16.
//  Copyright © 2016 Mohammed Huraib. All rights reserved.
//

import Foundation

class Player : Character {
    
    private var _inventory : [String]?
    
    var inventory : [String]{
        get{
            if let tempInventory = _inventory {
                return tempInventory
            }
            else{
                let newInventory = ["no Items"]
                return newInventory
            }
        }
    }
    
    convenience init(playerName: String){
        self.init(name : playerName, hp : 100, catchPhrase : "Lets kick some ***", attackPower : 15)
    }
    
    func addToInventory(item : String){
        
        _inventory?.append(item)
        
    }
    func removeForInventory(oldItem : String) {
        
        if _inventory != nil {
            for x in 0..._inventory!.count{
                
                if _inventory![x]==oldItem{
                    _inventory?.removeAtIndex(x)
                }
            }
        }
    }
    
    
    
    
}