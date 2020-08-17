//
//  ViewController.swift
//  TestUITextField
//
//  Created by Ygor Nascimento on 16/08/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myView = View()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addObserversForKeyboard()
    }

    func addObserversForKeyboard() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.keyboadWillShow(notification:)),
                                               name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    @objc func keyboadWillShow(notification: NSNotification) {

        if let keyboardHeightRect = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
            print("View Frame = \(view.frame)")
            print("View Frame Origin = \(view.frame.origin.y)")
            print("Keyboard height = \(keyboardHeightRect.height)")
            //keyboardSize = keyboardHeightRect
            view.frame.origin.y -= keyboardHeightRect.height / 2
        }
    }

    private func setupView() {
        view.addSubview(myView)
        myView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),

        ])
    }

}

