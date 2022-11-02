//
//  CurrentUserService.swift
//  Navigation
//
//  Created by Artyom Prima on 31.10.2022.
//

import Foundation
import UIKit

class CurrentUserService: UserService {
   
   public var userObject = User(loginUser: "Bob", fullNameUser: "Bobby", avatarUser: UIImage(named: "18")!, statusUser: "Im OK")
    
    func loginCheck(login: String) -> User? {
        let user = userObject
        return login == userObject.loginUser ? user : nil
    }
    
    
}
