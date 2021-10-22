//
//  FeedViewController.swift
//  Navigation
//
//  Created by Георгий Бондаренко on 21.10.2021.
//

import UIKit

class FeedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        let view = FeedView(post: self.getPost(), frame: CGRect())
        self.view = view
    }
    
    private func getPost()->Post {
        return Post(title: "Post title")
    }
}
