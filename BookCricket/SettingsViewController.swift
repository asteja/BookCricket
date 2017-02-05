//
//  SecondViewController.swift
//  BookCricket
//
//  Created by Saiteja Alle on 2/3/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var oversTF: UITextField!
    @IBOutlet weak var playersTF: UITextField!
    
    var game:CricketGame!
    
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

    @IBAction func setButtonClicked(_ sender: Any) {
        
        game.overs = Int(oversTF.text!)!
        game.players = Int(playersTF.text!)!
        
        playersTF.resignFirstResponder()
        
        let alert = UIAlertController(title: "", message: "Overs and Wickets Set", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Cancel", style: .cancel) { [unowned self](alertAction) in
            self.oversTF.text = nil
            self.playersTF.text = nil
        }
        alert.addAction(alertAction)
        self.show(alert, sender: self)
    }

}

