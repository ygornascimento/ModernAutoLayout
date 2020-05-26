//
//  CellContainer.swift
//  Table
//
//  Created by Ygor Nascimento on 13/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class ContainerView: UIView {

    private let partnerName: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Bacio di Latte"
        return label
    }()

    private let partnerAddress: UILabel = {
        let label = UILabel()
        label.text = "Av. Rouxinol, 576 - Moema, São Paulo - SP, 04516-000"
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()

    private let categoryAndLocationView = CategoryAndLocationView()

    private lazy var containerStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [partnerName, partnerAddress, categoryAndLocationView])
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.spacing = 6
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupContainerView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupContainerView()
    }

    private func setupContainerView() {
        addSubview(containerStackView)

        backgroundColor = #colorLiteral(red: 1, green: 0.9725490196, blue: 0.937254902, alpha: 1)
        layer.cornerRadius = 6

        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09993948063)
        layer.shadowOpacity = 4
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 6

        partnerName.translatesAutoresizingMaskIntoConstraints = false
        partnerAddress.translatesAutoresizingMaskIntoConstraints = false
        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        categoryAndLocationView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            containerStackView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            containerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            containerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
        ])
    }
}
