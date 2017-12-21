//
//  ViewController.swift
//  SideOutMenu
//
//  Created by furkan elkatmis on 18.12.2017.
//  Copyright © 2017 furkan.elkatmis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var MenuBtn: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

MenuBtn.target = revealViewController()
        MenuBtn.action = #selector(SWRevealViewController.revealToggle(_:))


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

