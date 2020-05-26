//
//  ViewController.swift
//  Table
//
//  Created by Ygor Nascimento on 12/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let myTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.separatorStyle = .none
        myTableView.register(Cell.self, forCellReuseIdentifier: "cell")
        myTableView.rowHeight = UITableView.automaticDimension
        //myTableView.estimatedRowHeight = 130

        setupTableView()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }

    private func setupTableView() {
        view.addSubview(myTableView)
        myTableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            myTableView.topAnchor.constraint(equalTo: view.topAnchor),
            myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}

