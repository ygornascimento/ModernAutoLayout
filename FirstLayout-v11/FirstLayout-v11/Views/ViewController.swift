//
//  ViewController.swift
//  FirstLayout-v11
//
//  Created by Ygor Nascimento on 23/02/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private var tileView: TileView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //5% radius
        let radius = tileView.bounds.width / 20
        tileView.layer.cornerRadius = radius
    }
    
    


}

