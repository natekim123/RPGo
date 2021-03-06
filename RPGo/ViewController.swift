//
//  ViewController.swift
//  RPGo
//
//  Created by Felix Plajer on 11/12/17.
//  Copyright © 2017 Felix Plajer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // every VC in the app keeps track of the Player
    var player: Player
    
    required init?(coder aDecoder: NSCoder) {
        self.player = Player.init(coder: aDecoder)!
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

