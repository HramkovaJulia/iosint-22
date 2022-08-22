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
        imageView.layer.borderWidth = 5 // толщина рамки
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Don't worry"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.textAlignment = .left
        return nameLabel
    }()
    
    private lazy var button: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.setTitle("Show my status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.shadowRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: -4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonTaped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        //        textField.backgroundColor = .blue
        textField.placeholder = "Enter your status ..."
        textField.returnKeyType = .done
        textField.becomeFirstResponder()
        //        textField.delegate = self
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
            nameLabel.text = textField.text
            textField.text = ""
        }
    }
    
    private func programmSetup(){
        self.backgroundColor = #colorLiteral(red: 0.8196074367, green: 0.8196083307, blue: 0.8411096334, alpha: 1)
        self.addSubview(self.imageView)
        self.addSubview(self.nameLabel)
        self.addSubview(self.button)
        self.addSubview(self.textField)
        
        self.imageView.frame = CGRect(x: 10,
                                      y: 10,
                                      width: 160,
                                      height: 160)
        self.nameLabel.frame = CGRect(x: 177,
                                      y: 27,
                                      width: 200,
                                      height: 21)
        self.button.frame = CGRect(x: 10,
                                   y: 186,
                                   width: 370,
                                   height: 50)
        self.textField.frame = CGRect(x: 177,
                                      y: 130,
                                      width: 200,
                                      height: 40)
        
    }
    
}



