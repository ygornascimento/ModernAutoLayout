//
//  RootViewController.swift
//  CodeLayout-v1
//
//  Created by Ygor Nascimento on 23/02/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

final class RootViewController: UIViewController {

    private let padding: CGFloat = 50.0
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth,.flexibleBottomMargin]
        return view
    }()
    
    override func viewDidLoad() {
        let rootView = UIView()
        rootView.backgroundColor = .yellow
        //view = rootView
    }
    
    override func viewWillLayoutSubviews() {
        if greenView.superview == nil {
            view.addSubview(greenView)
            let width = view.bounds.width - 2 * padding
            greenView.frame = CGRect(x: padding, y: padding, width: width, height: 3 * padding)
        }
    }
}
