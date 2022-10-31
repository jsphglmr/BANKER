//
//  AccountTransferViewController.swift
//  BANKER
//
//  Created by Joseph Gilmore on 10/25/22.
//

import UIKit

class AccountTransferViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

extension AccountTransferViewController {
    func setup() {
        setLogoutNavigationButton()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AccountTransferViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

extension AccountTransferViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}

