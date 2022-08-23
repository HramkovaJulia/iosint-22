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
        
        imageView.frame.size = CGSize(width: 160, height: 160) //размеры новой картинки
        imageView.layer.cornerRadius = 80
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
//        statusLabel.backgroundColor = .red
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
        button.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        self.imageView.frame = CGRect(x: 16,
                                      y: 16,
                                      width: 160,
                                      height: 160)
        self.nameLabel.frame = CGRect(x: 177,
                                      y: 27,
                                      width: 198,
                                      height: 21)
        self.statusLabel.frame = CGRect(x: 180,
                                        y: 80,
                                        width: 198,
                                        height: 40)
        self.button.frame = CGRect(x: 16,
                                   y: 186,
                                   width: 358, // расстояние слева справа по 16
                                   height: 50)
        self.textField.frame = CGRect(x: 180,
                                      y: 130,
                                      width: 198,
                                      height: 40)
        
    }
    
}

