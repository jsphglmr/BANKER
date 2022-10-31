//
//  UIViewController+Utils.swift
//  BANKER
//
//  Created by Joseph Gilmore on 10/2/22.
//

import UIKit

extension UIViewController {
    func setStatusBar() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithTransparentBackground()
        navBarAppearance.backgroundColor = appColor
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
    
    func setLogoutNavigationButton() {
        lazy var logoutBarButtonItem: UIBarButtonItem = {
            let button = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logoutTapped))
            button.tintColor = .label
            return button
        }()
        navigationItem.rightBarButtonItem = logoutBarButtonItem
    }
    
    @objc func logoutTapped(sender: UIButton) {
        NotificationCenter.default.post(name: .logout, object: nil)
    }
    
}
