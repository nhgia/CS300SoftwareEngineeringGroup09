//
//  ViewController.swift
//  Schoodle
//
//  Created by Gia Nguyen on 1/9/20.
//  Copyright © 2020 Gia Nguyen. All rights reserved.
//

import UIKit
import SideMenu

class ViewController: UIViewController {
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passTxtField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var wrongLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn.layer.cornerRadius = loginBtn.frame.height / 2
        wrongLbl.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func loginBtnTapped(_ sender: Any) {
        if usernameTxtField.text == "vana193" && passTxtField.text == "123456"{
            MainManager.sharedInstance().pushToStudentMain(vc: self)
        }
        else {
            wrongLbl.alpha = 1
        }
        
    }
    
    @IBAction func forgotBtn(_ sender: Any) {
    }
    
}

