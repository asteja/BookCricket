//
//  CricketGame.swift
//  BookCricket
//
//  Created by Saiteja Alle on 2/3/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import Foundation

class CricketGame {
    
    var overs:Int
    var players:Int
    var run:Int
    var balls,wickets:Int
    var score:Int
    var gameOver:Bool
    
    init() {
        self.overs = 1
        self.players = 5
        self.run = 0
        self.balls = 0
        self.wickets = 0
        self.score = 0
        self.gameOver = false
    }
    
     
    func generateRun()->String {
        
        if balls<(self.overs*6) && wickets<=self.players {
            run = Int(arc4random_uniform(7))
            balls=balls+1
            
        }
        else {
            gameOver = true
        }
        var runString:String
        
        if run != 5 && run != 0 {
            runString = "\(run)"
            score += run
            
        }
        else {
            if run == 0 {
                runString = "W"
                self.wickets += 1
            }else {
                runString = "No Run"
            }
        }
        
        return runString
    }
}
