//
//  ViewController.swift
//  CardWorkout
//
//  Created by Dru Mumba on 03/04/2023.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    @IBOutlet var CardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    var timer: Timer!
    var cards: [UIImage] = Card.allValues
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomCard(){
        CardImageView.image = cards.randomElement() ?? UIImage (named: "AS")
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        print("Stopped")
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        print("Restart")
    }
    
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
        print("Rules")
    }
}

