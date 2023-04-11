//
//  RulesVC.swift
//  CardWorkout2
//
//  Created by Dru Mumba on 10/04/2023.
//

import UIKit

class RulesVC: UIViewController {
    
    let headingLabel    = UILabel()
    let rulesLabel      = UILabel()
    let exerciseLabel   = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI(){
        configureHeadingLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    func configureHeadingLabel(){
        view.addSubview(headingLabel)
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        headingLabel.text = "Rules"
        headingLabel.font = UIFont(name: "ChalkboardSE-Regular", size: 40)
        headingLabel.textAlignment = .center
        
        
        NSLayoutConstraint.activate([
            headingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
            headingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            headingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureRulesLabel(){
        view.addSubview(rulesLabel)
        
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do. \n\n J = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = UIFont(name: "ChalkboardSE-Regular", size: 21)
        rulesLabel.textAlignment = .center
        rulesLabel.numberOfLines = 0
        rulesLabel.lineBreakMode = .byWordWrapping
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExerciseLabel(){
        view.addSubview(exerciseLabel)
        
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Push-up \n\n❤️ = Sit-up \n\n♦️ = Burpees \n\n♣️ = Jumping-jacks"
        exerciseLabel.font = UIFont(name: "ChalkboardSE-Regular", size: 21)
        exerciseLabel.numberOfLines = 0
        exerciseLabel.lineBreakMode = .byWordWrapping
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 50),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
}
