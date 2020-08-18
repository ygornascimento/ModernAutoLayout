//
//  View.swift
//  TestUITextField
//
//  Created by Ygor Nascimento on 16/08/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

protocol ResizeViewDelegate: AnyObject {
    func keyboardWillShow(notification: NSNotification, viewHeigt: CGFloat)
}

class View: UIView {

    weak var delegate: ResizeViewDelegate?
    var keyboardSize: CGRect?

    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("continue", for: .normal)
        button.backgroundColor = .blue
        //button.isHidden = true

        return button
    }()

    private lazy var textInput: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .none
        textField.keyboardType = .emailAddress
        textField.becomeFirstResponder()

        return textField
    }()

    private lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        //addObserversForKeyboard()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        addSubview(textInput)
        addSubview(button)
        addSubview(lineView)

        button.translatesAutoresizingMaskIntoConstraints = false
        textInput.translatesAutoresizingMaskIntoConstraints = false
        lineView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            textInput.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            textInput.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            textInput.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -16),
            textInput.heightAnchor.constraint(equalToConstant: 36),

            lineView.leadingAnchor.constraint(equalTo: textInput.leadingAnchor),
            lineView.trailingAnchor.constraint(equalTo: textInput.trailingAnchor),
            lineView.topAnchor.constraint(equalTo: textInput.bottomAnchor, constant: 8),
            lineView.heightAnchor.constraint(equalToConstant: 1),

            button.leadingAnchor.constraint(equalTo: textInput.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: textInput.trailingAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor ),

        ])
    }

    private func setupViewWithKeyboard() {
        addSubview(textInput)
        addSubview(button)
        addSubview(lineView)

        button.translatesAutoresizingMaskIntoConstraints = false
        textInput.translatesAutoresizingMaskIntoConstraints = false
        lineView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            textInput.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            textInput.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            textInput.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -16),
            textInput.heightAnchor.constraint(equalToConstant: 36),

            lineView.leadingAnchor.constraint(equalTo: textInput.leadingAnchor),
            lineView.trailingAnchor.constraint(equalTo: textInput.trailingAnchor),
            lineView.topAnchor.constraint(equalTo: textInput.bottomAnchor, constant: 8),
            lineView.heightAnchor.constraint(equalToConstant: 1),

            button.leadingAnchor.constraint(equalTo: textInput.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: textInput.trailingAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),

        ])
    }

}
