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
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColour: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColour
        setTitle(title, for: .normal)
        configure()
    }
    
    func configure(){
        layer.cornerRadius = 10
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
