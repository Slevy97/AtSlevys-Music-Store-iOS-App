//
//  EditingUIViewController.swift
//  AtSlevy's
//
//  Created by Stefan Slevoaca on 4/20/19.
//  Copyright © 2019 Stefan Slevoaca. All rights reserved.
//

import UIKit

class EditingUIViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    
}
