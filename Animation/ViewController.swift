//
//  ViewController.swift
//  Animation
//
//  Created by ErrorV9 on 28.04.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var persetLabelText: UILabel!
    @IBOutlet weak var animationView: SpringView!
    
//MARK: Private properties
    private let allAnimation = Animation.getAnimation()
    private var currentIndex: Int = 0
    private var currentIndexTwo: Int = 1

   
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 20
        colorTextLabel()
    }

    @IBAction func actionAnimation(_ sender: SpringButton) {
        let lastPosibleIndex = allAnimation.count - 1
        let value = allAnimation[currentIndex]
        let nextValue = allAnimation[currentIndexTwo]
           
        animationView.animation = value.perset
        animationView.curve = value.curve
        animationView.delay = CGFloat(value.delay)
        animationView.force = CGFloat(value.force)
        animationView.duration = CGFloat(value.duration)
        persetLabelText.text = value.discription
        animationView.animate()
        sender.setTitle(nextValue.perset, for: .normal)
        sender.animation = "pop"
        sender.animate()
        
        if lastPosibleIndex == currentIndex {
            currentIndex = 0
        } else {
            currentIndex += 1
        }
    
        if lastPosibleIndex > currentIndexTwo {
            currentIndexTwo += 1
        } else {
            currentIndexTwo = 0
        }
    }
}
// MARK: Private method

extension ViewController {
    private func colorTextLabel(){
        persetLabelText.textColor = .blue
    }
}


