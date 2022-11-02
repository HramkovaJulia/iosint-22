//
//  UserServiceProtocol.swift
//  Navigation
//
//  Created by Artyom Prima on 31.10.2022.
//

import Foundation

protocol UserService {
    
    func loginCheck(login: String) -> User?
    
}
