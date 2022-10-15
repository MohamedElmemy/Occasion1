//
//  underLine Button.swift
//  Occasion
//
//  Created by Mohamed Elmemy on 15/10/2022.
//

import UIKit

class underlineButton: UIButton{
    
    
    //MARK: - Init -
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        underline()
    
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        underline()
        
    }
    
    
    //MARK: - Design -
    
    private func underline() {
        
        guard let text = self.titleLabel?.text else { return }
        let attributedString = NSMutableAttributedString(string: text)
        
        
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle,
                                      value: NSUnderlineStyle.single.rawValue,
                                      range: NSRange(location: 0, length: text.count))
        
        
        self.setAttributedTitle(attributedString, for: .normal)
    }
}


