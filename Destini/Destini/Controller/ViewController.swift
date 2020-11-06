//
//  ViewController.swift
//  Destini
//
//  Created by KIKI EFENDY on 05/11/20.
//  Copyright © 2020 Kezia MT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greetTitle: UILabel!
    @IBOutlet weak var startImage: UIImageView!
    @IBOutlet weak var startButtonText: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = #imageLiteral(resourceName: "background-1")
        hideStory(hide: true)
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        startImage.isHidden = true
        greetTitle.text = ""
        startButtonText.isHidden = true
        updateUI()
        hideStory(hide: false)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func hideStory(hide: Bool) {
        if hide {
            choice1Button.isHidden = true
            choice2Button.isHidden = true
            storyLabel.isHidden = true
        } else {
            choice1Button.isHidden = false
            choice2Button.isHidden = false
            storyLabel.isHidden = false
        }
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
        if storyBrain.getIndex() == 0 {
            if backgroundImage.image == #imageLiteral(resourceName: "background-1") {
                backgroundImage.image = [#imageLiteral(resourceName: "background-3"), #imageLiteral(resourceName: "background-2")].randomElement()!
            } else if backgroundImage.image == #imageLiteral(resourceName: "background-3") {
                backgroundImage.image = [#imageLiteral(resourceName: "background-1"), #imageLiteral(resourceName: "background-2")].randomElement()!
            } else if backgroundImage.image == #imageLiteral(resourceName: "background-2") {
                backgroundImage.image = [#imageLiteral(resourceName: "background-3"), #imageLiteral(resourceName: "background-1")].randomElement()!
            }
        }
    }
    


}

