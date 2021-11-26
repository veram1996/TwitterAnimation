//
//  ViewController.swift
//  TiwitterAnimation
//
//  Created by Dheeraj Verma on 26/11/21.
//

import UIKit

class TiwtterViewController: UIViewController {
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.isUserInteractionEnabled = true
        iv.image =  UIImage(named: "tile00")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override func viewDidLoad() {
        view.addSubview(imageView)
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.animate(_ :))))
        imageView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 75).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        for i in 0..<29 {
            spriteImages.append(UIImage(named: "tile0\(i)")!)
        }
    }
    var spriteImages = [UIImage]()

    @objc func animate(_ sender: UITapGestureRecognizer) {
        print("trying to animate image")
        imageView.animationImages = spriteImages
        imageView.animationDuration = 1
        imageView.animationRepeatCount = .max
        imageView.startAnimating()
    }

}

