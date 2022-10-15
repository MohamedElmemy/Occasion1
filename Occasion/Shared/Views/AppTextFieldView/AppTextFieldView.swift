//
//  AppTextFieldView.swift
//  Occasion
//
//  Created by Mohamed Elmemy on 12/10/2022.
//

import UIKit

class AppTextFieldView: UIView {

    //MARK: - IBOutlets -
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var stackView: UIStackView!
    @IBOutlet weak private var secureButton: UIButton!
    @IBOutlet weak fileprivate var textField: UITextField!
    
    //MARK: - Properties -
    @IBInspectable var title: String? {
        didSet {
            self.titleLabel.text = title
        }
    }
    @IBInspectable var placeholder: String? {
        didSet {
            self.textField.placeholder = placeholder
        }
    }
    @IBInspectable var isSecure: Bool = false {
        didSet {
            self.secureButton.isHidden = !isSecure
            self.textField.isSecureTextEntry = isSecure
        }
    }
    
    
    private let unActiveColor: UIColor = .lightGray
    private let activeColor: UIColor = UIColor(red: 0.60, green: 0.18, blue: 0.41, alpha: 1.00)
    
    
    var text: String? {
        set {
            self.textField.text = newValue
            
            if self.text == nil {
                self.stackView.layer.borderColor = self.unActiveColor.cgColor
            } else {
                self.stackView.layer.borderColor = self.activeColor.cgColor
            }
            
        }
        get {
            guard let value = self.textField.text, !value.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
                return nil
            }
            return value
        }
    }
    
    
    //MARK: - Init -
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    private func commonInit() {
        guard let xib = Bundle.main.loadNibNamed("AppTextFieldView", owner: self)?.first, let viewFromXib = xib as? UIView else {return}
        viewFromXib.frame = self.bounds
        self.addSubview(viewFromXib)
        self.initialDesign()
        self.textField.delegate = self
    }
    
    //MARK: - Design -
    private func initialDesign() {
        
        self.stackView.layer.cornerRadius = 8
        self.stackView.layer.borderWidth = 0.5
        self.stackView.layer.borderColor = self.unActiveColor.cgColor
        
        self.secureButton.isHidden = !isSecure
        self.textField.isSecureTextEntry = isSecure
    }
    
    func set(keyboardType: UIKeyboardType) {
        self.textField.keyboardType = keyboardType
    }
    
    //MARK: - IBActions -
    @IBAction private func secureButtonPressed() {
        self.secureButton.isSelected.toggle()
        self.textField.isSecureTextEntry = !self.secureButton.isSelected
    }
    

}

//MARK: - Delegation -
extension AppTextFieldView: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.stackView.layer.borderColor = self.activeColor.cgColor
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if self.text == nil {
            self.stackView.layer.borderColor = self.unActiveColor.cgColor
        }
    }
}


class AppPhoneTextFieldView: AppTextFieldView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    private func commonInit() {
        self.textField.keyboardType = .asciiCapableNumberPad
    }
}
