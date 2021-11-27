//
//  ButtonAnimationViewController.swift
//  TiwitterAnimation
//
//  Created by Dheeraj Verma on 27/11/21.
//

import UIKit

class ButtonAnimationViewController: UIViewController {

    var animator:  UIViewPropertyAnimator!
    var boxWidthAnchor: NSLayoutConstraint!
    let box = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        

        box.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(box)
        box.backgroundColor = .red
        boxWidthAnchor = box.widthAnchor.constraint(equalToConstant: 100)
        boxWidthAnchor.isActive = true
        box.heightAnchor.constraint(equalToConstant: 100).isActive = true
        box.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        box.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
      
        let slider =  UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(slider)
        slider.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        slider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        slider.widthAnchor.constraint(equalToConstant: view.frame.width - 150).isActive = true
        slider.addTarget(self, action: #selector(handleSliderChanged(slide:)), for: .allEvents)
        
    }
    @objc fileprivate func handleSliderChanged(slide: UISlider) {
        print(slide.value)
        boxWidthAnchor.constant = 100 + CGFloat(slide.value * 100)
        animator = UIViewPropertyAnimator(duration: 2, dampingRatio: 0.5, animations: {
            self.view.layoutIfNeeded()
            self.box.backgroundColor = .blue
        })
        animator.startAnimation()
       // animator.fractionComplete = CGFloat(slide.value)
    }
   
}
