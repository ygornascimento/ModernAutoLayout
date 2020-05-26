//
//  View.swift
//  TestingConstraints
//
//  Created by Ygor Nascimento on 18/05/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

final class FirstSample: UIView {
    private let padding: CGFloat = 50.0
    private let spacing: CGFloat = 25.0

    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()

    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        addSubview(redView)
        addSubview(greenView)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            redView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            redView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),

            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: spacing),
            greenView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            greenView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            greenView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),

            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor)
        ])
    }
}
