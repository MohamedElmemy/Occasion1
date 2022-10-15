//
//  Gradient.swift
//  Occasion
//
//  Created by Mohamed Elmemy on 15/10/2022.
//

import UIKit
class GradientView: UIView {

    
    //MARK: - Design -
    
    var topColor: UIColor = UIColor(red: 0.39, green: 0.14, blue: 0.37, alpha: 1.00)
    
    var bottomcolor: UIColor = UIColor(red: 0.60, green: 0.18, blue: 0.41, alpha: 1.00)
   

    override func layoutSubviews(){
    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [topColor.cgColor, bottomcolor.cgColor]

    gradientLayer.frame = self.bounds
    self.layer.insertSublayer(gradientLayer, at: 0)
}

}

