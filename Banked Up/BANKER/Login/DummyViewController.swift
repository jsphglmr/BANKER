//
//  DummyViewController.swift
//  Banked Up
//
//  Created by Joseph Gilmore on 9/27/22.
//

import UIKit

class DummyViewController: UIViewController {
    
    weak var logoutDelegate: LogoutDelegate?
    
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
        label.text = "Welome"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        return label
    }()
    
    private let logoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .filled()
        button.setTitle("Logout", for: [])
        button.addTarget(self, action: #selector(logoutButtonTapped), for: .primaryActionTriggered)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
}

extension DummyViewController {
    func layout() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(logoutButton)
        view.addSubview(stackView)
        
        let stackViewConstraints = [
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        NSLayoutConstraint.activate(stackViewConstraints)
    }
}

//MARK: - Objc Methods
extension DummyViewController {
    @objc func logoutButtonTapped(sender: UIButton) {
        logoutDelegate?.didLogout()
    }
}
