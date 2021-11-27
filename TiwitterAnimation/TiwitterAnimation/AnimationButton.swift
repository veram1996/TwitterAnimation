//
//  AnimationButton.swift
//  TiwitterAnimation
//
//  Created by Dheeraj Verma on 27/11/21.
//

import Foundation
import UIKit

class AnimationButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        phaseTwo(title: "Button")
    }
    
    init(title: String) {
        super.init(frame: .zero)
        phaseTwo(title: title)
    }
    
    fileprivate func phaseTwo(title: String) {
        layer.cornerRadius = 12
        backgroundColor = .blue
        setTitle("Button", for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
