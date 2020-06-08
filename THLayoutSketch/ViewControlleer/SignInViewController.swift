//
//  SignInViewController.swift
//  THLayoutSketch
//
//  Created by guntex01 on 6/4/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit
import Stevia
class SignInViewController: UIViewController {
    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.16, green: 0.17, blue: 0.20, alpha: 1.00)
        return view
    }()
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Login to your acoount"
        label.font = UIFont(name: "Arial", size: 35)
        label.numberOfLines = 0
        label.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return label
    }()
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = " Email"
        label.font = UIFont(name: "Arial", size: 14)
        label.textColor = UIColor(red: 0.50, green: 0.50, blue: 0.50, alpha: 1.00)
        return label
    }()
    let topTextFild: CustomTextField = {
        let textFiled = CustomTextField("", UIColor.clear, UIColor.white, UIColor.yellow, CGRect.zero)
        return textFiled
    }()
    
    private let bottomTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor.clear
        textField.textColor = UIColor.white
        textField.placeholder = "Password"
        
        return textField
    }()
    
    let lineView2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    let forgotButton: UIButton = {
        let button = UIButton()
        button.text("forgot?")
        button.setTitleColor(UIColor(red: 0.16, green: 0.47, blue: 0.38, alpha: 1.00), for: .normal)
        button.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        return button
    }()
    let rememberLabel: UILabel = {
        let label = UILabel()
        label.text("Remember me")
        label.font = UIFont(name: "Arial", size: 12)
        label.textColor = UIColor.white
        return label
    }()
    let signIn: CustomButton = {
        let button = CustomButton("SIGN IN", UIColor.email(), .zero)
        return button
    }()
    let signINFb: CustomButton = {
        let button = CustomButton("SIGN IN WITH FACEBOOK", UIColor.facebook(), .zero)
        return button
    }()
    let checkButton: checkBox = {
        let button = checkBox( UIColor.clear, .zero)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.sv([blackView, emailLabel, topTextFild, bottomTextField,lineView2, rememberLabel, signIn, signINFb, checkButton])
        blackView.sv([textLabel])
    
        self.view.backgroundColor = UIColor.view1()
        
        setupLayout()
        addButton()
    }
    func setupLayout(){
        view.layout(
            0,
            |-0-blackView-0-| ~ 243,
            40,
            |-50-emailLabel-50-|,
            10,
            |-50-topTextFild-50-|,
            30,
            |-50-bottomTextField-50-|,
            5,
            |-50-lineView2-50-| ~ 1,
            30,
            |-50-checkButton-rememberLabel-50-|,
            60,
            |-40-signIn-40-| ~ 50,
            10,
            |-40-signINFb-40-| ~ 50
            
            
        )
        checkButton.Width == checkButton.Height
        blackView.layout(
            |-50-textLabel-50-| ~ 80,
            30
        )
        
    }
    @objc func nextPage(){
        let forgotVC = ForgotPasswordViewController()
        self.navigationController?.pushViewController(forgotVC, animated: true)
    }
    func addButton(){
        bottomTextField.sv(forgotButton)
        bottomTextField.layout(
            |-250-forgotButton-0-|
        )
        bottomTextField.rightViewMode = UITextField.ViewMode.always
    }
}

