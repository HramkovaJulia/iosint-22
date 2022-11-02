//
//  TestUserService.swift
//  Navigation
//
//  Created by Artyom Prima on 31.10.2022.
//

import Foundation
import UIKit

class TestUserService: UserService {
    
    var userError: User? = User(loginUser: "Sam", fullNameUser: "Samson", avatarUser: UIImage(named: "post2")!, statusUser: "Boring")
    
    func loginCheck(login: String) -> User? {
        let user = userError
        return login == userError!.loginUser ? user : nil
    }
}
