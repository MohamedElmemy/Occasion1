//
//  ViewController.swift
//  Occasion
//
//  Created by Mohamed Elmemy on 11/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldView: AppPhoneTextFieldView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.endEdit))
        self.view.addGestureRecognizer(tap)
        
//        textFieldView.set(keyboardType: .asciiCapableNumberPad)
        
    }
    
    @objc func endEdit() {
        self.view.endEditing(true)
    }


}

