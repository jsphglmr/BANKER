//
//  AccountTransferViewController.swift
//  BANKER
//
//  Created by Joseph Gilmore on 10/25/22.
//

import UIKit

class AccountTransferViewController: UIViewController {
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "AccountTransferVC text placeholder"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        return label
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        style()
    }
}

extension AccountTransferViewController {
    func layout() {
        stackView.addArrangedSubview(label)
        view.addSubview(stackView)
        
        let stackViewConstraints = [
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        NSLayoutConstraint.activate(stackViewConstraints)
    }
    
    func style() {
        view.backgroundColor = .systemPurple
    }
}

