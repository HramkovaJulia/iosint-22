//
//  LogInViewController.swift
//  Navigation
//
//  Created by Artyom Prima on 01.09.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    override func viewDidLoad() {
        self.hideNavigationBar()
        view.addSubview(scrollView)
        programSetup()
        addConstraint()
        
    }
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.backgroundColor = .white
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = .white
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        return contentView
    }()
    
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
    
    private lazy var textFieldName: UITextField = { [unowned self] in
        let textFieldName = UITextField()
        textFieldName.placeholder = "Email or phone"
        textFieldName.backgroundColor = #colorLiteral(red: 0.949019134, green: 0.9490200877, blue: 0.9705254436, alpha: 1)
        textFieldName.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textFieldName.returnKeyType = .done
        textFieldName.borderStyle = UITextField.BorderStyle.roundedRect
        textFieldName.autocorrectionType = UITextAutocorrectionType.no
        textFieldName.keyboardType = UIKeyboardType.default
        textFieldName.returnKeyType = UIReturnKeyType.done
        textFieldName.clearButtonMode = UITextField.ViewMode.whileEditing
        textFieldName.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        textFieldName.layer.borderColor = UIColor.lightGray.cgColor
        textFieldName.layer.cornerRadius = 10
        textFieldName.layer.borderWidth = 0.5
        textFieldName.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        textFieldName.becomeFirstResponder()
        textFieldName.translatesAutoresizingMaskIntoConstraints = false
        textFieldName.autocapitalizationType = .none
        
        textFieldName.delegate = self

        
        return textFieldName
        
    }()
    
    private lazy var textFieldPassword: UITextField = { [unowned self] in
        let textFieldPassword = UITextField()
        textFieldPassword.placeholder = "Password"
        textFieldPassword.backgroundColor = #colorLiteral(red: 0.949019134, green: 0.9490200877, blue: 0.9705254436, alpha: 1)
        textFieldPassword.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textFieldPassword.returnKeyType = .done
        textFieldPassword.borderStyle = UITextField.BorderStyle.roundedRect
        textFieldPassword.autocorrectionType = UITextAutocorrectionType.no
        textFieldPassword.keyboardType = UIKeyboardType.default
        textFieldPassword.returnKeyType = UIReturnKeyType.done
        textFieldPassword.clearButtonMode = UITextField.ViewMode.whileEditing
        textFieldPassword.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        textFieldPassword.layer.borderColor = UIColor.lightGray.cgColor
        textFieldPassword.layer.cornerRadius = 10
        textFieldPassword.layer.borderWidth = 0.5
        textFieldPassword.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        textFieldPassword.becomeFirstResponder()
        textFieldPassword.isSecureTextEntry = true
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        textFieldPassword.autocapitalizationType = .none
        
        textFieldPassword.delegate = self
        
        return textFieldPassword
        
    }()
    
    private func programSetup() {
        scrollView.addSubview(contentView)
        contentView.addSubview(imageView)
        contentView.addSubview(buttonLogIn)
        contentView.addSubview(textFieldName)
        contentView.addSubview(textFieldPassword)
   
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
            //scrollView
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            //contentView
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupKeyboardObservers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        removeKeyboardObservers()
    }
    
    // MARK: - Actions
    
    @objc func willShowKeyboard(_ notification: NSNotification) {
        let keyboardHeight = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.height
        scrollView.contentInset.bottom += keyboardHeight ?? 0.0
    }
    
    @objc func willHideKeyboard(_ notification: NSNotification) {
        scrollView.contentInset.bottom = 0.0
    }
    
    private func setupKeyboardObservers() {
        let notificationCenter = NotificationCenter.default
        
        notificationCenter.addObserver(
            self,
            selector: #selector(self.willShowKeyboard(_:)),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        
        notificationCenter.addObserver(
            self,
            selector: #selector(self.willHideKeyboard(_:)),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }
    
    private func removeKeyboardObservers() {
        let notificationCenter = NotificationCenter.default
        notificationCenter.removeObserver(self)
    }
}

extension LogInViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(
        _ textField: UITextField
    ) -> Bool {
        textFieldName.resignFirstResponder()
        textFieldPassword.resignFirstResponder()
        return true
    }

}
extension LogInViewController {
    func hideNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    func showNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
