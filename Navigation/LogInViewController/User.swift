//
//  User.swift
//  Navigation
//
//  Created by Artyom Prima on 31.10.2022.
//

import Foundation
import UIKit

class User {
    
    var loginUser: String
    var fullNameUser: String
    var avatarUser: UIImage
    var statusUser: String
    
    init(loginUser: String, fullNameUser: String, avatarUser: UIImage,statusUser: String) {
       
        self.loginUser = loginUser
        self.fullNameUser = fullNameUser
        self.avatarUser = avatarUser
        self.statusUser = statusUser
    }
}

protocol UserService {
    
    func loginCheck(login: String) -> User?
    
}

