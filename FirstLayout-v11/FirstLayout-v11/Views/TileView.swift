//
//  TileView.swift
//  FirstLayout-v11
//
//  Created by Ygor Nascimento on 23/02/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

@IBDesignable
final class TileView: UIView {
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
    
    @IBInspectable var padding: CGFloat = 25.0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        addSubview(blueView)
        addSubview(redView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //Size of this container view
        let containerWidth = bounds.width
        let containerHeight = bounds.height
        
        //Calculate width and height of each item, including the padding
        let numberrOfItems: CGFloat = 2
        let itemWidth = (containerWidth - (numberrOfItems + 1) * padding) / numberrOfItems
        let itemHeight = containerHeight - 2 * padding
        
        //Set the frames of the two subviews
        blueView.frame = CGRect(x: padding, y: padding, width: itemWidth, height: itemHeight)
        redView.frame = CGRect(x: 2 * padding + itemWidth, y: padding, width: itemWidth, height: itemHeight)
    }
    
    
}
