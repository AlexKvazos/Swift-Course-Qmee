//
//  GameViewController.swift
//  QMee
//
//  Created by Alejandro Cavazos on 11/1/17.
//  Copyright © 2017 Alejandro Cavazos. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    
    var started = false
    var game = QMeeGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "0"
        
        let starterImage = UIImage(named: "2")
        questionImageView.image = starterImage
        questionLabel.text = "Tap the true button to start the game"
        falseButton.isEnabled = false
    }
    
    func updateGame() {
        let nextQuestion = game.getNextQuestion()
        let questionImage = game.getQuestionImageName()
        let image = UIImage(named: questionImage)
        
        scoreLabel.text = "\(game.currentScore)"
        questionImageView.image = image
        questionLabel.text = nextQuestion
    }
    
    @IBAction func handleTapTrue() {
        if !started {
            started = true
            falseButton.isEnabled = true
        }
        game.currentScore += 1
        updateGame()
    }
    
    @IBAction func handleTapFalse() {
        game.currentScore -= 1
        updateGame()
    }
}
