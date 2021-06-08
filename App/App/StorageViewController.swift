//
//  StorageViewController.swift
//  Storage
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Dependencies

class StorageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Storage"
        view.backgroundColor = UIColor.red
        showLabel()
    }
    
    private func showLabel() {
        let label = UILabel(frame: CGRect.zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        let storageodule = Dependencies.shared.storageModule
        label.text = "Storage : \(storageodule.getStoreLocation())"
        let constraints = [
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 10)
        ]
        view.addSubview(label)
        NSLayoutConstraint.activate(constraints)
        testVersioning()
    }
    
    func testVersioning() {
        let loggerModule = Dependencies.shared.loggerModule
        loggerModule.writeLogs(log: "test")
        loggerModule.sendLogs?()
    }

}
