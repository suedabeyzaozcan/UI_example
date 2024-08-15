//
//  ViewController.swift
//  UITextFieldExample
//
//  Created by Sueda Beyza Özcan on 14.08.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var uyarimesajı: UILabel!
    @IBOutlet weak var activitiyIndicatorView: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uyarimesajı.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        if userNameTextField.text == "sueda", passwordTextField.isHidden {
            passwordTextField.isHidden = false
            uyarimesajı.isHidden = true// durum sağlanıyorsa satır hidden olsun
        } else {
            if  userNameTextField.text != "sueda" {
                uyarimesajı.text = "Kullanıcı adı yanlış"
                uyarimesajı.isHidden = false // durum sağlanıyorsa satır hidden olsun
                uyarimesajı.textColor = UIColor.red
            } else if !(passwordTextField.isHidden), passwordTextField.text == "123456" {
                activitiyIndicatorView.startAnimating()
                uyarimesajı.isHidden = true
            } else {
                uyarimesajı.text = "hatalı şifre"
                uyarimesajı.isHidden = false
            }
        }
    }
}
