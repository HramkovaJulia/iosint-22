//
//  Checker.swift
//  Navigation
//
//  Created by Artyom Prima on 13.11.2022.
//

import Foundation
import UIKit

class Checker {
    static let shared = Checker()
    
    private init() {}
    
    private let login: String = "Julia"
    private let password: String = "379"
    
    func check (log: String, passw: String) -> Bool {
       
        log == login && passw == password ? true : false
    }
}
