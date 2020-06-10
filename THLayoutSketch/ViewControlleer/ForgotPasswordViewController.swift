//
//  ForgotPasswordViewController.swift
//  THLayoutSketch
//
//  Created by guntex01 on 6/4/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit
import Stevia
class ForgotPasswordViewController: UIViewController {
    let  forLabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot Password"
        //label.font = UIFont(name: "Arial", size: 30)
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = UIColor.text()
        return label
    }()
    let pleaseLabel : UILabel = {
        let label = UILabel()
        label.text = "Please enter your email address and we will send your password. by email immadiatly"
        label.font = UIFont(name: "Arial", size: 18)
        label.numberOfLines = 0
        label.textColor = UIColor.text()
        return label
    }()
    let textFieldEmail: CustomTextField = {
        let textField = CustomTextField("Email", UIColor.clear, UIColor.white, UIColor.yellow, .zero)
        return textField
    }()
    let sendButton: CustomButton = {
        let button = CustomButton("SEND", UIColor.email(), .zero, UIFont.boldSystemFont(ofSize: 20))
        button.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.sv([forLabel, pleaseLabel, textFieldEmail, sendButton])
        self.view.backgroundColor = UIColor.view1()
        setupLayout()
    }
    func setupLayout(){
        view.layout(
        100,
        |-50-forLabel-50-| ~ 80,
        20,
        |-50-pleaseLabel-50-|,
        50,
        |-50-textFieldEmail-50-|,
        50,
        |-50-sendButton-50-| ~ 50
        )
    
    }
    @objc func nextPage(){
        let updateVC = UpdatePasswordViewController()
        self.navigationController?.pushViewController(updateVC, animated: true)
    }
    
    
}
