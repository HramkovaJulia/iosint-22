//
//  ViewController.swift
//  Navigation
//
//  Created by Artyom Prima on 16.08.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTapBar()
    }
    
    func setupTapBar() {
        
        let feedViewController = createNavController(vc: FeedViewController(), itemName: "Feed", itemImage: "text.badge.checkmark")
        let profileViewController = createNavController(vc: ProfileViewController(), itemName: "Profile", itemImage: "rectangle.stack.person.crop")
        
        viewControllers = [feedViewController, profileViewController]
    }
    
    func createNavController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        UITabBar.appearance().barTintColor = .white
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        return navController
    }
    
    


}
