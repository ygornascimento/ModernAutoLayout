//
//  ViewController.swift
//  OnlyViews
//
//  Created by Ygor Nascimento on 22/02/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let errorView: ErrorView = {
        let view = ErrorView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .init(cgColor: #colorLiteral(red: 0.9137254902, green: 0.3843137255, blue: 0.5529411765, alpha: 1))
        view.addSubview(errorView)

        let subViewTopConstant = UIScreen.main.bounds.height * 0.291
        
        NSLayoutConstraint.activate([
            errorView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: subViewTopConstant),
            errorView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            errorView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            errorView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
}
