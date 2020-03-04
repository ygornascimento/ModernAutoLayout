//
//  ErrorView.swift
//  OnlyViews
//
//  Created by Ygor Nascimento on 26/02/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class ErrorView: UIView {

    private let lapisImageView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "lapis"))
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private let titleLabel: UILabel = {
        let view = UILabel()
        view.text = "algo deu errado"
        view.font = UIFont.boldSystemFont(ofSize: 16.0)
        view.adjustsFontSizeToFitWidth = true
        view.textColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.1647058824, alpha: 1)
        return view
    }()
    
    private let textLabel: UILabel = {
        let view = UILabel()
        view.text = "desculpe, mas não foi possível carregar o conteúdo, tente novamente."
        view.font = UIFont.systemFont(ofSize: 14.0)
        view.adjustsFontSizeToFitWidth = true
        view.textColor = #colorLiteral(red: 0.4196078431, green: 0.4196078431, blue: 0.4196078431, alpha: 1)
        view.numberOfLines = 0
        view.textAlignment = .center
        return view
    }()
    
    private let button: UIButton = {
        let view = UIButton(type: .custom)
        view.setTitle("tentar de novo", for: .normal)
        view.setTitleColor(#colorLiteral(red: 0.9254901961, green: 0.4392156863, blue: 0, alpha: 1), for: .normal)
        view.backgroundColor = .white
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16.0)
        view.titleLabel?.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupErrorView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupErrorView()
    }

    private func setupErrorView() {
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.cornerRadius = 16
        layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]

        addSubview(lapisImageView)
        addSubview(titleLabel)
        addSubview(textLabel)
        addSubview(button)

        let deviceScreenBounds = UIScreen.main.bounds
        let imageViewTopConstant = deviceScreenBounds.height * 0.147
        let imageViewWidthConstant = deviceScreenBounds.width * 0.342
        let buttonBottomConstant = deviceScreenBounds.height * 0.169
        let textLabelWidthConstant = deviceScreenBounds.width * 0.139

        lapisImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //lapisImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            lapisImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: imageViewTopConstant),
            lapisImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: imageViewWidthConstant),
            lapisImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -imageViewWidthConstant),

            titleLabel.centerXAnchor.constraint(equalTo: lapisImageView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: lapisImageView.bottomAnchor, constant: 15),

            //textLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            textLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            textLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: textLabelWidthConstant),
            textLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -textLabelWidthConstant),
            
            button.centerXAnchor.constraint(equalTo: lapisImageView.centerXAnchor),
            button.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 16.5),
            button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -buttonBottomConstant)
        ])
    }
}
