
//
//  LogInViewController.swift
//  Navigation
//
//  Created by Artyom Prima on 01.09.2022.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Lifecicle
    override func viewDidLoad() {
        
        programSetup()
        addConstraint()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
        self.view.addGestureRecognizer(gesture)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        setupKeyboardHiding()
        view.backgroundColor = .white
        self.tabBarController?.tabBar.backgroundColor = #colorLiteral(red: 0.9607843757, green: 0.9607843757, blue: 0.9607843757, alpha: 1)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        removeKeyboardObservers()
    }
    
    //MARK: Subviews
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
        textFieldName.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textFieldName.frame.height))
        textFieldName.leftViewMode = .always
        textFieldName.textColor = .black
        textFieldName.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textFieldName.tintColor = UIColor(named: "AccentColor")
        textFieldName.autocapitalizationType = .none
        textFieldName.backgroundColor = .systemGray6
        
        textFieldName.layer.borderColor = UIColor.lightGray.cgColor
        textFieldName.layer.borderWidth = 0.5
        textFieldName.returnKeyType = UIReturnKeyType.done
        textFieldName.autocorrectionType = .no
        textFieldName.keyboardType = .namePhonePad
        textFieldName.translatesAutoresizingMaskIntoConstraints = false
        
        textFieldName.delegate = self
        
        
        return textFieldName
        
    }()
    
    private lazy var textFieldPassword: UITextField = { [unowned self] in
        let textFieldPassword = UITextField()
        
        textFieldPassword.placeholder = "Password"
        textFieldPassword.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textFieldPassword.frame.height))
        textFieldPassword.leftViewMode = .always
        textFieldPassword.textColor = .black
        textFieldPassword.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textFieldPassword.tintColor = UIColor(named: "AccentColor")
        textFieldPassword.autocapitalizationType = .none
        textFieldPassword.backgroundColor = .systemGray6
        
        textFieldPassword.layer.borderColor = UIColor.lightGray.cgColor
        textFieldPassword.layer.borderWidth = 0.5
        textFieldPassword.returnKeyType = UIReturnKeyType.done
        textFieldPassword.autocorrectionType = .no
        textFieldPassword.keyboardType = .namePhonePad
        textFieldPassword.isSecureTextEntry = true
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        
        textFieldPassword.delegate = self
        
        return textFieldPassword
        
    }()
    
    private lazy var stackView: UIStackView = {
        
        let stackView = UIStackView()
        stackView.layer.cornerRadius = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.clipsToBounds = true
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.addArrangedSubview(textFieldName)
        stackView.addArrangedSubview(textFieldPassword)
        
        return stackView
    }()
    //MARK: func
    
    private func programSetup() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        contentView.addSubview(imageView)
        contentView.addSubview(buttonLogIn)
        
    }
    
    @objc func buttonProfileHeader() {
        
        let profileViewController = ProfileViewController()
        self.navigationController?.pushViewController(profileViewController, animated: true)
        
    }
    
    // MARK: - Actions
    
    @objc func keyboardWillShow(_ notification: NSNotification) {
        let keyboardHeight = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.height
        scrollView.contentInset.bottom += keyboardHeight ?? 0.0
    }
    
    @objc  func keyboardWillHide(_ notification: NSNotification) {
        scrollView.contentInset.bottom = 0.0
    }
    
    private func addConstraint() {
        let safeAreaGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            
            scrollView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 120),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            
            stackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120),
            stackView.heightAnchor.constraint(equalToConstant: 100),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            
            buttonLogIn.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16),
            buttonLogIn.heightAnchor.constraint(equalToConstant: 50),
            buttonLogIn.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            buttonLogIn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        ])
        
        contentView.subviews.last?.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    private func setupKeyboardHiding() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    private func removeKeyboardObservers() {
        let notificationCenter = NotificationCenter.default
        notificationCenter.removeObserver(self)
    }
//    После нажатия Done клава исчезает 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
        
    }
    //
    @objc private func handleTap() {
        self.view.endEditing(true)
    }
}














