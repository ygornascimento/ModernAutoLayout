//
//  CategoryAndLocationView.swift
//  Table
//
//  Created by Ygor Nascimento on 13/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class CategoryAndLocationView: UIView {

    private let iconBackgroundView = UIView()

    private let categoryIcon: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "✚"
        label.textAlignment = .center
        return label
    }()

    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "alimentação"
        return label
    }()

    private let locationIcon: UILabel = {
        let label = UILabel()
        label.text = "✚"
        return label
    }()

    private let locationLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "a 100m >"
        return label
    }()

    private lazy var categoryStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [iconBackgroundView, categoryLabel])
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 4
        return stack
    }()

    private lazy var locationStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [locationIcon, locationLabel])
        stack.axis = .horizontal
        stack.distribution = .equalCentering
        stack.spacing = 4
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    func setupView() {
        iconBackgroundView.addSubview(categoryIcon)
        addSubview(categoryStackView)
        addSubview(locationStackView)

        iconBackgroundView.backgroundColor = .white
        iconBackgroundView.layer.cornerRadius = 10

        categoryIcon.translatesAutoresizingMaskIntoConstraints = false
        iconBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        categoryStackView.translatesAutoresizingMaskIntoConstraints = false

        locationIcon.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationStackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            iconBackgroundView.widthAnchor.constraint(equalToConstant: 20),
            iconBackgroundView.heightAnchor.constraint(equalToConstant: 20),

            categoryIcon.widthAnchor.constraint(equalToConstant: 20),
            categoryStackView.heightAnchor.constraint(equalToConstant: 20),

            categoryStackView.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            categoryStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            categoryStackView.bottomAnchor.constraint(equalTo: bottomAnchor),

            locationStackView.topAnchor.constraint(equalTo: categoryStackView.topAnchor),
            locationStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            locationStackView.bottomAnchor.constraint(equalTo: categoryStackView.bottomAnchor)
        ])
    }
}
