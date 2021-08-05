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
    
    var storyBrain = StoryBrain()
    var currentStoryIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentStoryIndex = storyBrain.getCurrentStoryIndex()
        fetchStoryData(story: currentStoryIndex)
    }
    
    func fetchStoryData(story: Int) {
        
        storyLabel.text = storyBrain.getStoryText(index: story)
        let storyChoices = storyBrain.getStoryChoices(index: story)
        let choices = [storyChoices.0, storyChoices.1]
        
        choice1Button.setTitle(choices[0], for: .normal)
        choice2Button.setTitle(choices[1], for: .normal)
    }
    
    @IBAction func onChoiceButtonPress(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        
        storyBrain.progressStory(storyIndex: currentStoryIndex, userAnswer: userAnswer!)
        
        currentStoryIndex = storyBrain.getCurrentStoryIndex()

        fetchStoryData(story: currentStoryIndex)
        
        print(currentStoryIndex, storyBrain.getCurrentStoryIndex())
    }
}
