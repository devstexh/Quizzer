//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    @IBOutlet weak var choiceButton3: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizzer = Quizzer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestionLabel()
    }
    
    @objc func updateQuestionLabel() {
        self.questionLabel.text = quizzer.getQuestionText()
        let choices = quizzer.getChoices()
        self.choiceButton1.setTitle(choices[0], for: .normal)
        self.choiceButton1.setTitle(choices[1], for: .normal)
        self.choiceButton1.setTitle(choices[2], for: .normal)
        self.progressBar.progress = quizzer.getProgress()
        self.choiceButton1.backgroundColor = UIColor.clear
        self.choiceButton2.backgroundColor = UIColor.clear
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if (quizzer.check(sender.currentTitle!)) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        quizzer.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestionLabel), userInfo: nil, repeats: false)
    }
}

