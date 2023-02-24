//
//  CustomButton.swift
//  to-do app
//
//  Created by Norah Almaneea on 22/02/2023.
//

import Foundation
import UIKit
class CustomButton: UIButton{
   //
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    func setupButton(){
        setTitleColor(.white, for: .normal)
        backgroundColor = UIColor(red: 25/255, green: 28/255, blue: 50/255, alpha: 1)
        layer.cornerRadius = 25
        frame.size.height = 55
        frame.size.width = 339
        
        
        
    }
}
