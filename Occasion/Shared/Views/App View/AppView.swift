//
//  AppView.swift
//  Occasion
//
//  Created by Mohamed Elmemy on 12/10/2022.
//

import UIKit

class AppView: UIView{
    
    
    //MARK: - IBOutlets -
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var image: UIImageView!
 
    
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
        guard let xib = Bundle.main.loadNibNamed("AppView", owner: self)?.first, let viewFromXib = xib as? UIView else {return}
        viewFromXib.frame = self.bounds
        self.addSubview(viewFromXib)
        self.setup()
    }
    
    
    
    //MARK: - Design -
    private func setup() {

        self.view.layer.cornerRadius = 10
        
     
    }
    
    
}
    
