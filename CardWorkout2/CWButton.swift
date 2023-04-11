//
//  CWButton.swift
//  CardWorkout2
//
//  Created by Dru Mumba on 05/04/2023.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(colour: UIColor, title: String, imageName: String){
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = colour
        configuration?.baseBackgroundColor = colour
        configuration?.cornerStyle = .large
        configuration?.image = UIImage(systemName: imageName)
        configuration?.imagePadding = 7
        configuration?.imagePlacement = .trailing
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}

