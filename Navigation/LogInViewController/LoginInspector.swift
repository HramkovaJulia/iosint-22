//
//  LoginInspector.swift
//  Navigation
//
//  Created by Artyom Prima on 13.11.2022.
//

import Foundation
import UIKit

struct LoginInspector: LoginViewControllerDelegate {
   
    func check(log: String, passw: String) -> Bool {
        let result = Checker.shared.check(log: log, passw: passw)
        return result
    }
}

protocol LoginFactory {
    func makeLoginInspector() -> LoginInspector
}

struct MyLoginFactory: LoginFactory {
    func makeLoginInspector() -> LoginInspector {
        return LoginInspector()
    }
    
    
}
