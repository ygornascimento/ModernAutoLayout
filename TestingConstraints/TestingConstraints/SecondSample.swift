//
//  SecondSample.swift
//  TestingConstraints
//
//  Created by Ygor Nascimento on 23/05/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

final class SecondSample: UIView {

    let spacing = CGFloat(25.0)

    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()

    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
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
        addSubview(blueView)
        redView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: topAnchor, constant: spacing),
            redView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: spacing),
            redView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -spacing),

            blueView.topAnchor.constraint(equalTo: topAnchor, constant: spacing),
            blueView.leadingAnchor.constraint(equalTo: redView.trailingAnchor, constant: spacing),
            blueView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -spacing),
            blueView.bottomAnchor.constraint(equalTo: redView.bottomAnchor),

            redView.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 1.5)
        ])
    }
}
