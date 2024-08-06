//
//  ViewController.swift
//  CardWorkout
//
//  Created by Dru Mumba on 03/04/2023.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    @IBOutlet var CardImageView: UIImageView!
    
    var timer: Timer!
    var cards: [UIImage] = Card.allValues
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomCard(){
        CardImageView.image = cards.randomElement() ?? UIImage (named: "AS")
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
}

