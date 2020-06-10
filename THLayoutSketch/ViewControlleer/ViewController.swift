//
//  ViewController.swift
//  THLayoutSketch
//
//  Created by guntex01 on 6/4/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit
import Stevia
class ViewController: UIViewController {
    
    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lane()
        return view
    }()
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Ideal store for your jewellery shopping"
        //label.font = UIFont(name: "Arial", size: 35)
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.numberOfLines = 0
        label.textColor = UIColor.white
        return label
    }()
    let emailButton: CustomButton = {
        let button = CustomButton("SIGN UP WITH EMAIL", UIColor.email(), .zero, UIFont.boldSystemFont(ofSize: 20))
        return button
    }()
    let fbButton: CustomButton = {
        let button = CustomButton("SIGN UP WITH FACEBOOK", UIColor.facebook(), .zero,UIFont.boldSystemFont(ofSize: 20))
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.sv([blackView, textLabel, emailButton, fbButton])
        self.view.backgroundColor = UIColor.view1()
        setupLayout()
        addRightButton()
        
        
    }
    func addRightButton() {
        let viewFN = UIView(frame: CGRect(x:0, y: 0, width: 100, height: 40))
        viewFN.backgroundColor = UIColor.clear
        let button1 = UIButton(frame: CGRect(x: 0, y: 0, width: viewFN.bounds.width, height: viewFN.bounds.height))
        button1.setTitle("SIGN IN", for: .normal)
        button1.setImage(UIImage(named: "Shape"), for: .normal)
        button1.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        button1.imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        
        button1.setTitleShadowColor(UIColor.white, for: .normal)
        navigationController?.navigationBar.tintColor = UIColor.white
        button1.addTarget(self, action: #selector(nextPage), for: UIControl.Event.touchUpInside)
        viewFN.addSubview(button1)
        let rightBarButton = UIBarButtonItem(customView: viewFN)
        self.navigationItem.rightBarButtonItem = rightBarButton
        
    }
    @objc func nextPage(){
        let signVC = SignInViewController()
        self.navigationController?.pushViewController(signVC, animated: true)
    }
    
    func setupLayout(){
        view.layout(
            |-50-textLabel-50-| ~ 80,
            20,
            |-45-blackView-45-| ~ 1,
            40,
            |-40-emailButton-40-| ~ 50 ,
            10,
            |-40-fbButton-40-| ~ 50 ,
            50
            
        )
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // set cho navigationBar trong suốt để thấy ảnh ở background (cần đủ 3 dòng)
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
        self.navigationController!.navigationBar.barTintColor = UIColor.blue
    }
}

