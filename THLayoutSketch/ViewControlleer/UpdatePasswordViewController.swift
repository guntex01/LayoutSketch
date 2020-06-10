//
//  UpdatePasswordViewController.swift
//  THLayoutSketch
//
//  Created by guntex01 on 6/4/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit
import Stevia
class UpdatePasswordViewController: UIViewController {
    let  updateLabel: UILabel = {
        let label = UILabel()
        label.text = "Update your password"
        //label.font = UIFont(name: "Arial", size: 35)
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.numberOfLines = 0
        label.textColor = UIColor.text()
        return label
    }()
    let pleaseLabel : UILabel = {
        let label = UILabel()
        label.text = "Please enter your new  password"
        label.font = UIFont(name: "Arial", size: 18)
        label.numberOfLines = 0
        label.textColor = UIColor.text()
        return label
    }()
    let textFieldPassword: CustomTextField = {
        let textField = CustomTextField("", UIColor.clear, UIColor.white, UIColor.yellow, .zero)
        return textField
    }()
    let textFieldConfirm: CustomTextField = {
        let textField = CustomTextField("Confirm password", UIColor.clear, UIColor.white, UIColor.yellow, .zero)
        return textField
    }()
    let resetButton: CustomButton = {
        let button = CustomButton("RESET PASSWORD", UIColor.email(), .zero, UIFont.boldSystemFont(ofSize: 20))
        button.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.sv([updateLabel, pleaseLabel, textFieldPassword, textFieldConfirm, resetButton])
        self.view.backgroundColor = UIColor.view1()
        setupLayout()
    }
    
    func setupLayout(){
        view.layout(
        100,
        |-50-updateLabel-50-|,
        30,
        |-50-pleaseLabel-50-|,
        50,
        |-50-textFieldPassword-50-|,
        30,
        |-50-textFieldConfirm-50-|,
        50,
        |-50-resetButton-50-| ~ 50
        
        )
    
    }
    @objc func nextPage(){
    let galaxy6VC = Galaxy6ViewController()
        self.navigationController?.pushViewController(galaxy6VC, animated: true)
    }

    

}
