//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Георгий Бондаренко on 21.10.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        let profileHeaderView = ProfileHeaderView(
            profile: self.getProfile(),
            frame: view.frame
        )
        view.addSubview(profileHeaderView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        self.title = "Profile"
    }
    
    private func getProfile() -> Profile {
        return Profile(name: "Hipster cat", imageSrc: "", state: "some state")
    }
}
