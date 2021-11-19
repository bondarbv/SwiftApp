//
//  TabBarController.swift
//  SwiftApp
//
//  Created by Bohdan on 14.11.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let viewControllers = viewControllers else { return }
        viewControllers.forEach {
            if let profileVC = $0 as? ProfileViewController {
                profileVC.name = user.person.fullName
                profileVC.image = user.person.image
            }
        }
    }


}
