//
//  SecureView.swift
//  SecureYourView
//
//  Created by Sreekuttan D on 02/06/23.
//

import Foundation
import UIKit

class SecureView: UIView {
    
    // placeholder will become visible when user try to capture screenshot
    // or try to record the screen
    private(set) var placeholderView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // add your content in this view
    // it will be secure
    private(set) var contentView: UIView = {
        let hiddenView = UIView()
        hiddenView.makeSecure()
        hiddenView.translatesAutoresizingMaskIntoConstraints = false
        return hiddenView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        
        self.addSubview(placeholderView)
        self.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            placeholderView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            placeholderView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            placeholderView.topAnchor.constraint(equalTo: self.topAnchor),
            placeholderView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: self.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
}
