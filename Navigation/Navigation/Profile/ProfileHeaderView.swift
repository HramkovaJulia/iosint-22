//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Artyom Prima on 19.08.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var imageView: UIImageView = {
        
        let imageView = UIImageView(image: UIImage(named: "guest"))
        
        imageView.layer.cornerRadius = 70
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.white.cgColor // цвет рамки
        imageView.layer.borderWidth = 3 // толщина рамки
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Don't worry"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.textAlignment = .left
        return nameLabel
    }()
    
    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = ""
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.textAlignment = .left
        
        return statusLabel
    }()
    
    private lazy var button: UIButton = {
        
        let button = UIButton()
        
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4
        button.setTitle("Show my status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: -4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonTaped), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your status ..."
        textField.textColor = .lightGray
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textField.clearButtonMode = .whileEditing // Кнопка «Очистить» при редактировании
        textField.clearButtonMode = .always // Всегда показывать кнопку очистки
        
        textField.returnKeyType = .done
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.becomeFirstResponder()
        
        return textField
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.programmSetup()
        self.addConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func buttonTaped(sender: UIButton!) {
        guard textField.text?.isEmpty == false else { return }
        if Double(textField.text!) != nil {
            print("Name format is wrong")
        } else {
            statusLabel.text = textField.text
            textField.text = ""
        }
    }
    
    private func programmSetup(){
        self.backgroundColor = #colorLiteral(red: 0.8196074367, green: 0.8196083307, blue: 0.8411096334, alpha: 1)
        self.addSubview(self.imageView)
        self.addSubview(self.nameLabel)
        self.addSubview(self.statusLabel)
        self.addSubview(self.button)
        self.addSubview(self.textField)
        
    }
    
    public func addConstraint() {
        button.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //button
            button.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            button.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -5),
            button.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            //nameLabel
            nameLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            nameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            nameLabel.heightAnchor.constraint(equalToConstant: 30),
            nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 5),
            // imageView
            imageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            imageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            imageView.heightAnchor.constraint(equalToConstant: 140),
            imageView.widthAnchor.constraint(equalToConstant: 140),
            // textField
            textField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            textField.bottomAnchor.constraint(equalTo: button.safeAreaLayoutGuide.topAnchor, constant: -34),
            textField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 5),
            textField.heightAnchor.constraint(equalToConstant: 30),
            // statusLabel
            statusLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            statusLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 5),
            statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            statusLabel.heightAnchor.constraint(equalToConstant: 30),
          
        ])
    }
}



