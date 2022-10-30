//
//  MainViewController.swift
//  BANKER
//
//  Created by Joseph Gilmore on 10/2/22.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupTabBar()
    }
    
    private func setupViews() {
        let summaryVC = AccountSummaryViewController()
        let transferVC = AccountTransferViewController()
        let moreVC = MoreViewController()
        
        summaryVC.setTabBarImage(imageName: "list.dash.header.rectangle", title: "Summary")
        transferVC.setTabBarImage(imageName: "arrow.left.arrow.right", title: "Transfer")
        moreVC.setTabBarImage(imageName: "ellipsis.circle", title: "Move")
        
        let summaryNC = UINavigationController(rootViewController: summaryVC)
        let transferNC = UINavigationController(rootViewController: transferVC)
        let moreNC = UINavigationController(rootViewController: moreVC)
        
        summaryNC.navigationBar.barTintColor = .label
        hideNavigationBarLine(summaryNC.navigationBar)
        
        let tabBarList = [summaryNC, transferNC, moreNC]
        viewControllers = tabBarList
    }
    
    private func hideNavigationBarLine(_ navigationBar: UINavigationBar) {
        let img = UIImage()
        navigationBar.shadowImage = img
        navigationBar.setBackgroundImage(img, for: .default)
        navigationBar.isTranslucent = false
    }
    
    private func setupTabBar() {
        tabBar.tintColor = appColor
        tabBar.isTranslucent = false
    }
}
