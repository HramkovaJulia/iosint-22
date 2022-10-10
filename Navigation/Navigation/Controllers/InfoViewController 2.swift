//
//  InfoViewController.swift
//  Navigation
//
//  Created by Artyom Prima on 17.08.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupButton()
    }
    
    private lazy var button: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.setTitle("Cоздать новый пост", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
    }()
    
    private func setupButton() {
        
        self.view.addSubview(self.button)
        self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    @objc private func buttonAction() {
        showAlert()
    }
    
    func showAlert(){
        
        let alert = UIAlertController(title: "Внимание", message: "Введите ваше имя", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil ))
        alert.addAction(UIAlertAction(title: "Зарегистрируйтесь", style: .default, handler: { alert in
            
        } ))
        
        alert.addTextField(configurationHandler: { field in
            field.placeholder = "Имя"
            field.returnKeyType = .next
        })
        
        present(alert, animated: true)
        
    }
    
    
    
    
    
    
    
    
    
}
