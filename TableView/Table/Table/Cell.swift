//
//  TableViewCell.swift
//  Table
//
//  Created by Ygor Nascimento on 13/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    private let cellContainer = ContainerView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        contentView.addSubview(cellContainer)
        cellContainer.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            cellContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            cellContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            cellContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            cellContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant:-8)
        ])
    }
}
