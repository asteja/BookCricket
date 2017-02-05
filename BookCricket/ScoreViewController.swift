//
//  FirstViewController.swift
//  BookCricket
//
//  Created by Saiteja Alle on 2/3/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import UIKit
import CoreGraphics

class ScoreViewController: UIViewController {

    @IBOutlet weak var ballIV: UIImageView!
    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var labelView: LabelView!
    
    @IBOutlet weak var runsLBL: UILabel!
    @IBOutlet weak var scoreLBL: UILabel!
    @IBOutlet weak var scoreBTN: UIButton!
    
    var game:CricketGame?
    var isLabelViewShowing = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        game = appDelegate.game
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func scoreButtonClicked(_ sender: Any) {
        
         if (isLabelViewShowing) {
            //hide Graph
            UIView.transition(from: ballIV,to: labelView,duration: 1.0,options: [UIViewAnimationOptions.transitionFlipFromLeft, UIViewAnimationOptions.showHideTransitionViews],completion:nil)
            displayScore()
        } else {
            //show Graph
            UIView.transition(from: labelView,to: ballIV,duration: 1.0,options: [UIViewAnimationOptions.transitionFlipFromRight, UIViewAnimationOptions.showHideTransitionViews],completion: nil)
        }
        isLabelViewShowing = !isLabelViewShowing
       }
    
    func displayScore() {
        runsLBL.text = game!.generateRun()
        scoreLBL.text = "\(game!.score)/\(game!.wickets)"
        if game?.gameOver == true {
            scoreBTN.isEnabled = false
        }
    }
}

