//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Artyom Prima on 16.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileHeader: ProfileHeaderView = {
        let view = ProfileHeaderView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"
        self.view.backgroundColor = .white
       
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
        self.view.addGestureRecognizer(gesture)
    }
    
    override func viewWillLayoutSubviews(){
    self.view.addSubview(self.profileHeader)
        self.profileHeader.frame = CGRect(x: 0, y: 100, width: self.view.bounds.width, height: self.view.bounds.height)
    }
    
    @objc private func handleTap() {
        self.view.endEditing(true)
        
    }

}
