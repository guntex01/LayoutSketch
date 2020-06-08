//
//  Galaxy6ViewController.swift
//  THLayoutSketch
//
//  Created by guntex01 on 6/4/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit
import Stevia
class Galaxy6ViewController: UIViewController {
    let photoImage: UIImageView = {
    let photoImage = UIImageView()
        photoImage.image = UIImage(named: "he")

        return photoImage
    }()
    let  helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello Linda"
        label.textAlignment = .center
        label.font = UIFont(name: "Arial", size: 35)
        label.numberOfLines = 0
        label.textColor = UIColor.text()
        return label
    }()
    let yourLabel: UILabel = {
        let label = UILabel()
        label.text = "Your password has been reset"
        label.textAlignment = .center
        label.font = UIFont(name: "Arial", size: 18)
        label.numberOfLines = 0
        label.textColor = UIColor.text()
        return label
    }()
    let startButton: CustomButton = {
        let button = CustomButton("START SHOPPING", UIColor.email(), .zero)
        button.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.view1()
        view.sv([photoImage, helloLabel, yourLabel, startButton])
        
        setupLayout()
    }
    
    override func viewDidLayoutSubviews() {
        photoImage.layer.cornerRadius = photoImage.bounds.height/2
        photoImage.layer.masksToBounds = true
        photoImage.layer.borderWidth = 1
        photoImage.layer.borderColor = UIColor.white.cgColor
        
    }
    
    func setupLayout(){
        view.layout(
        100,
        |-80-photoImage-80-|,
        30,
        |-50-helloLabel-50-| ~ 80,
        10,
        |-50-yourLabel-50-|,
        50,
        |-50-startButton-50-| ~ 50
        )
        
        photoImage.Width == photoImage.Height
    
    }
    @objc func nextPage(){
    let galaxy7VC = Galaxy7ViewController()
        self.navigationController?.pushViewController(galaxy7VC, animated: true)
    }

}
