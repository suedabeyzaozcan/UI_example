//
//  ViewController.swift
//  button
//
//  Created by Sueda Beyza Özcan on 14.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didtapButton(_ sender: UIButton) {
        sender.setTitleColor(UIColor.green, for: UIControl.State.normal)
   
        TitleLabel.text = "Hoş Geldiniz"
    }
    
    
    
}

