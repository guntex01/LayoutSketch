//
//  checkBox.swift
//  THLayoutSketch
//
//  Created by guntex01 on 6/8/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class checkBox: UIButton {
    
    
    // Images
    let checkedImage = UIImage(named:"check1")
    let uncheckedImage = UIImage(named: "uncheck")
    
    init( _ backgroundColor: UIColor, _ frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = backgroundColor
        self.setImage(checkedImage, for: UIControl.State.normal)
        self.setImage(uncheckedImage, for: UIControl.State.normal)
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Bool property
    var isChecked: Bool = false {
        didSet {
            if isChecked == true {
                self.setImage(checkedImage, for: UIControl.State.normal)
            } else {
                self.setImage(uncheckedImage, for: UIControl.State.normal)
            }
        }
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}



