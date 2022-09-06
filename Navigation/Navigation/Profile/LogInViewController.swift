//
//  LogInViewController.swift
//  Navigation
//
//  Created by Artyom Prima on 01.09.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        programSetup()
        addConstraint()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
        self.view.addGestureRecognizer(gesture)
    }
    
    private lazy var scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.backgroundColor = .white
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2200)
    }
    
    private lazy var imageView: UIImageView = {
        
        let imageView = UIImageView(image: UIImage(named: "vk"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var buttonLogIn: UIButton = {
        
        let buttonLogIn = UIButton()
        buttonLogIn.backgroundColor = #colorLiteral(red: 0.3456393778, green: 0.5991438627, blue: 0.8382620215, alpha: 1)
        buttonLogIn.layer.cornerRadius = 10
        buttonLogIn.setTitle("Log In", for: .normal)
        buttonLogIn.setTitleColor(.white, for: .normal)
        buttonLogIn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        buttonLogIn.translatesAutoresizingMaskIntoConstraints = false
        buttonLogIn.addTarget(self, action: #selector(buttonProfileHeader), for: .touchUpInside)

        return buttonLogIn
    }()
    
    private lazy var textFieldName: UITextField = {
        let textFieldName = UITextField()
        textFieldName.placeholder = "Email or phone"
        textFieldName.backgroundColor = #colorLiteral(red: 0.949019134, green: 0.9490200877, blue: 0.9705254436, alpha: 1)
        textFieldName.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textFieldName.returnKeyType = .done
        textFieldName.borderStyle = UITextField.BorderStyle.roundedRect
        textFieldName.layer.borderColor = UIColor.lightGray.cgColor
        textFieldName.layer.cornerRadius = 10
        textFieldName.layer.borderWidth = 0.5
        textFieldName.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        textFieldName.becomeFirstResponder()
        textFieldName.translatesAutoresizingMaskIntoConstraints = false
        textFieldName.autocapitalizationType = .none
        
        return textFieldName
        
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textFieldPassword = UITextField()
        textFieldPassword.placeholder = "Password"
        textFieldPassword.backgroundColor = #colorLiteral(red: 0.949019134, green: 0.9490200877, blue: 0.9705254436, alpha: 1)
        textFieldPassword.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textFieldPassword.returnKeyType = .done
        textFieldPassword.borderStyle = UITextField.BorderStyle.roundedRect
        textFieldPassword.layer.borderColor = UIColor.lightGray.cgColor
        textFieldPassword.layer.cornerRadius = 10
        textFieldPassword.layer.borderWidth = 0.5
        textFieldPassword.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        textFieldPassword.becomeFirstResponder()
        textFieldPassword.isSecureTextEntry = true
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        textFieldPassword.autocapitalizationType = .none
        
        return textFieldPassword
        
    }()
    
    private func programSetup() {
        scrollView.addSubview(imageView)
        scrollView.addSubview(buttonLogIn)
        scrollView.addSubview(textFieldName)
        scrollView.addSubview(textFieldPassword)
   
    }
    
    @objc private func handleTap() {
        self.view.endEditing(true)
    }
    
   
   
    @objc func buttonProfileHeader() {
        let profileViewController = ProfileViewController()
        self.navigationController?.pushViewController(profileViewController, animated: true)
//        postViewController.titlePost = post.title
    }

    
    private func addConstraint() {
       
        
        NSLayoutConstraint.activate([
            // imageView
            imageView.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor, constant: 120),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            //textFieldName
            textFieldName.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120),
            textFieldName.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            textFieldName.heightAnchor.constraint(equalToConstant: 50),
            textFieldName.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            //textFieldPassword
            textFieldPassword.topAnchor.constraint(equalTo: textFieldName.bottomAnchor),
            textFieldPassword.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            textFieldPassword.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 50),
//            buttonLogIn
            buttonLogIn.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 16),
            buttonLogIn.heightAnchor.constraint(equalToConstant: 50),
            buttonLogIn.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            buttonLogIn.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            buttonLogIn.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
        ])
    }

}
