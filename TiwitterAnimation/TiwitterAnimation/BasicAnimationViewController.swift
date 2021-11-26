//
//  BasicAnimationViewController.swift
//  TiwitterAnimation
//
//  Created by Dheeraj Verma on 26/11/21.
//

import UIKit

class BasicAnimationViewController: UIViewController {
    let basicView = UIView()
    var yAnchor: NSLayoutConstraint!
    var xAnchor: NSLayoutConstraint!
    var widthAnchor: NSLayoutConstraint!
    var heightAnchor: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        basicView.backgroundColor = .blue
        basicView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(basicView)
        yAnchor = basicView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        yAnchor.isActive = true
        xAnchor = basicView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        xAnchor.isActive = true
        heightAnchor = basicView.heightAnchor.constraint(equalToConstant: 200)
        heightAnchor.isActive = true
        widthAnchor =  basicView.widthAnchor.constraint(equalToConstant: 200)
        widthAnchor.isActive = true
//        animationBox1(to: .red)
        perform(#selector(animationBox2), with: nil, afterDelay: 1)
//        animationBox2()
    }
    
    fileprivate func animationBox1(to color: UIColor) {
        UIView.animate(withDuration: 0.3) {
            self.basicView.backgroundColor = color
        }
    }
    
    @objc fileprivate func animationBox2() {
        yAnchor.isActive = false
        yAnchor = basicView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        yAnchor.isActive = true
        
        xAnchor.isActive = false
        xAnchor = basicView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        xAnchor.isActive = true
        
        widthAnchor.isActive = false
        widthAnchor = basicView.widthAnchor.constraint(equalToConstant: 300)
        widthAnchor.isActive = true
        
        heightAnchor.isActive = false
        heightAnchor = basicView.heightAnchor.constraint(equalToConstant: 300)
        heightAnchor.isActive = true
        
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 1.5, options: .curveEaseIn) {
            self.view.layoutIfNeeded()
        } completion: { flag in
            
        }
    }

}
