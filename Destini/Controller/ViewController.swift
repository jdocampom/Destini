//
//  ViewController.swift
//  Destini
//
//  Created by Juan Diego Ocampo on 31/10/2020.
//  Copyright © 2019 Juan Diego Ocampo. All rights reserved.
//

// MARK: Libraries

import UIKit

class ViewController: UIViewController {
    
// MARK: IB-Outlets

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
// MARK: Variables
    
    var storyBrain = StoryBrain()
    
// MARK: Methods
    
    /// Tag: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    /// Tag: updateUI()
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
// MARK: IB-Actions
    
    /// Tag: choiceMade()

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
}
