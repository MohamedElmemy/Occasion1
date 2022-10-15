//
//  AppButton.swift
//  Occasion
//
//  Created by Mohamed Elmemy on 12/10/2022.
//

import UIKit

class AppButton: UIButton{
    
    
    //MARK: - Init -
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
        
        
        
    }
        
        
        //MARK: - Design -
        private func setup() {
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [UIColor(red: 0.39, green: 0.14, blue: 0.37, alpha: 1.00).cgColor, UIColor(red: 0.60, green: 0.18, blue: 0.41, alpha: 1.00).cgColor]
            gradientLayer.cornerRadius = 10
            
            gradientLayer.frame = bounds
            layer.insertSublayer(gradientLayer, at: 0)
            
            
            
            
            
            
        }
    }

    
    

                         
                         
                         
