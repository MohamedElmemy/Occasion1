//
//  WelcomMessage.swift
//  Occasion
//
//  Created by Mohamed Elmemy on 12/10/2022.
//

import UIKit

class WelcomMessage: UIView{
    
    //MARK: - IBOutlets -
    @IBOutlet weak var WelcomLabel: UILabel!
    
    @IBOutlet weak var MessageLabel: UILabel!
    
    
    //MARK: - Properties -
    
    @IBInspectable var title: String? {
        didSet {
            self.WelcomLabel.text = title

            
        }
    }
    
        @IBInspectable var messageText: String? {
            didSet {
                
                self.MessageLabel.text = messageText
                self.MessageLabel.numberOfLines = 2
                
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
        guard let xib = Bundle.main.loadNibNamed("welcomMessage", owner: self)?.first, let viewFromXib = xib as? UIView else {return}
        viewFromXib.frame = self.bounds
        self.addSubview(viewFromXib)

    }
}
