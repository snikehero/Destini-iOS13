//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storybrain = StoryBrain()
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle // Left or Right
        storybrain.nextStory(userChoice: userChoice!)
        storyLabel.text = storybrain.stories[storybrain.storyNumber].title
        choice1Button.setTitle(storybrain.stories[storybrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storybrain.stories[storybrain.storyNumber].choice2, for: .normal)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storybrain.stories[0].title
        choice1Button.setTitle(storybrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storybrain.stories[0].choice2, for: .normal)
    }


}

