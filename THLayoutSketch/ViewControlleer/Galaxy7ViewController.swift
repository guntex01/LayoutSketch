//
//  Galaxy7ViewController.swift
//  THLayoutSketch
//
//  Created by guntex01 on 6/4/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit
import Stevia
class Galaxy7ViewController: UIViewController {
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.16, green: 0.17, blue: 0.20, alpha: 1.00)
        return view
    }()
    let createLabel: UILabel = {
        let label = UILabel()
        label.text = "Create your account"
        //label.font = UIFont(name: "Arial", size: 0)
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.numberOfLines = 0
        label.textColor = UIColor.text()
        return label
    }()
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.font = UIFont(name: "Arial", size: 12)
        label.numberOfLines = 0
        label.textColor = UIColor.text()
        return label
    }()
    let nameTextField  : CustomTextField = {
        let textField = CustomTextField("", UIColor.clear, UIColor.white, UIColor.yellow, .zero)
        return textField
    }()
    let emailTextField: CustomTextField = {
        let textField = CustomTextField("Email", UIColor.clear, UIColor.white, UIColor.yellow, .zero)
        return textField
    }()
    let passwordTextField: CustomTextField = {
        let textField = CustomTextField("password", UIColor.clear, UIColor.white, UIColor.yellow, .zero)
        return textField
    }()
    let checkLabel: UILabel = {
        let label = UILabel()
        label.text = "You agree the terms and privacy policy"
        label.font = UIFont(name: "Arial", size: 12)
        label.numberOfLines = 0
        label.textColor = UIColor.text()
        return label
    }()
    let checkButton: checkBox = {
        let button = checkBox( UIColor.clear, .zero)
        return button
    }()
    let signUpButton: CustomButton = {
        let button = CustomButton("SIGN UP", UIColor.email(), .zero, UIFont.boldSystemFont(ofSize: 20))
        
        return button
    }()
    let signUpFbButton: CustomButton = {
        let button = CustomButton("SIGN UP WITH FACEBOOK", UIColor.facebook(), .zero,UIFont.boldSystemFont(ofSize: 20))
        
        return button
    }()
    let orLabel: UILabel = {
        let label = UILabel()
        label.text = "OR"
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    let lineView1: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.sv([topView, nameLabel,nameTextField, emailTextField, passwordTextField,checkLabel, checkButton, signUpButton, signUpFbButton, orLabel,lineView, lineView1])
        topView.sv(createLabel)
        
        self.view.backgroundColor = UIColor.view1()
        setupLayout()
        
    }
    func setupLayout(){
        view.layout(
            0,
            |-0-topView-0-| ~ 243,
            30,
            |-50-nameLabel-50-|,
            5,
            |-50-nameTextField-50-|,
            40,
            |-50-emailTextField-50-|,
            40,
            |-50-passwordTextField-50-|,
            30,
            |-50-checkButton-checkLabel-50-|,
            30,
            |-50-signUpButton-50-| ~ 50,
            10,
            |-50-lineView.height(1)-orLabel.centerHorizontally()-lineView1.height(1)-50-|,
            10,
            |-50-signUpFbButton-50-| ~ 50
        )
        checkButton.Width == checkButton.Height
        
        topView.layout(
            |-50-createLabel-50-| ~ 80,
            30
        )
        
    }
    
}
