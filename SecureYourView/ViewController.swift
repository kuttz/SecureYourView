//
//  ViewController.swift
//  SecureYourView
//
//  Created by Sreekuttan D on 02/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    var secureView: SecureView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        secureView = SecureView()
        secureView.translatesAutoresizingMaskIntoConstraints = false
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sample")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        secureView.contentView.addSubview(imageView)
        
        let placeholderText = UILabel()
        placeholderText.translatesAutoresizingMaskIntoConstraints = false
        placeholderText.numberOfLines = 2
        placeholderText.textAlignment = .center
        placeholderText.text = "Nice try! \nBut you can't 😉"
        
        
        secureView.placeholderView.addSubview(placeholderText)
        
        self.view.addSubview(secureView)
        
        NSLayoutConstraint.activate([
            secureView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            secureView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            secureView.topAnchor.constraint(equalTo: self.view.topAnchor),
            secureView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: secureView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: secureView.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: secureView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: secureView.bottomAnchor),
            placeholderText.centerXAnchor.constraint(equalTo: secureView.centerXAnchor),
            placeholderText.centerYAnchor.constraint(equalTo: secureView.centerYAnchor),
        ])
        
    }


}

