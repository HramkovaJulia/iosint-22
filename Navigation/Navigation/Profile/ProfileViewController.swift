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
        addConstraintsView()

        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
        self.view.addGestureRecognizer(gesture)
        
    }
    private func addConstraintsView(){
        profileHeader.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(profileHeader)
        NSLayoutConstraint.activate([
            // uiview
            profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeader.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeader.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeader.heightAnchor.constraint(equalToConstant: 220),
           
        ])
    }

    @objc private func handleTap() {
        self.view.endEditing(true)
    }
}
