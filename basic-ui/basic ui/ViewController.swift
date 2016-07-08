//
//  ViewController.swift
//  basic ui
//
//  Created by 최철동 on 2016. 7. 7..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var edit: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button(sender: UIButton) {
//        label.text = "HELLO WORLD"
       
        let text = edit.text
        label.text = text
    }
}

