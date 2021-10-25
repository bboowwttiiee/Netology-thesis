//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Георгий Бондаренко on 25.10.2021.
//

import UIKit

class ProfileHeaderView: UIView {
    var profileImage: UIImage?
    var profileTitle: UITextView?
    var profileTextInput: UITextInput?
    var showStatusButton: UIButton?
    var profile: Profile
    
    public init(profile: Profile, frame: CGRect) {
        self.profile = profile
        super.init(frame: frame)
        print("Profile: \(self.profile.name), \(self.profile.state), \(self.profile.imageSrc)")
        initProfileTitle()
        configureLayout()
    }
    
    fileprivate func initProfileTitle() {
        profileTitle = {
            let profileTitle = UITextView()
            profileTitle.text = profile.name
            profileTitle.translatesAutoresizingMaskIntoConstraints = false
            return profileTitle
        }()
        if profileTitle != nil {
            addSubview(profileTitle!)
        }
    }
    
    func configureLayout() {
        let views: [String: Any] = [
            "superView": self,
//            "profileImage": profileImage,
            "profileTitle": profileTitle,
//            "profileTextInput": profileTextInput,
//            "showStatusButton": showStatusButton
        ]
        var constraintArray: [NSLayoutConstraint] = []
        
        constraintArray += NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-[profileTitle]-|", metrics: nil, views: views)
        constraintArray += NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-[profileTitle]-|", metrics: nil, views: views)
        NSLayoutConstraint.activate(constraintArray)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
