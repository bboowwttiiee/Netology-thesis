//
//  FeedView.swift
//  Navigation
//
//  Created by Георгий Бондаренко on 21.10.2021.
//

import UIKit

class FeedView: UIView {
    
    var buttonView = UIView()
    var button: UIButton = {
        let button = UIButton(frame: .zero)
        return button
    }()
    
    
    
    public init(post: Post, frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        addSubview(buttonView)
        buttonView.backgroundColor = .white
//        buttonView.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle(post.title, for: .normal)
        buttonView.addSubview(button)
        configureLayout()
        
    }
    
    func configureLayout() {
        let views: [String: Any] = [
            "superView": self,
            "buttonView": buttonView,
            "button": button
        ]
        var constraintArray: [NSLayoutConstraint] = []
        
        constraintArray += NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-20-[buttonView]-20-|", metrics: nil, views: views)
//        constraintArray += NSLayoutConstraint.constraints(
//            withVisualFormat: "V:|-[shadow]-|", metrics: nil, views: views)
        NSLayoutConstraint.activate(constraintArray)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init?(coder) has not been implemented")
    }
}
