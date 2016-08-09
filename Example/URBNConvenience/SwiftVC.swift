//
//  SwiftVC.swift
//  URBNConvenience
//
//  Created by Nick DiStefano on 12/11/15.
//  Copyright © 2015 jgrandelli. All rights reserved.
//

import UIKit
import URBNConvenience

class SwiftVC: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        let redView = UIView()
        let blueView = UIView()
        let greenView = UIView()
        let imageView = UIImageView()
        
        blueView.backgroundColor = .blue
        redView.backgroundColor = .red
        greenView.backgroundColor = .green

        view.addSubviewWithNoConstraints(redView)
        view.addSubviewWithNoConstraints(blueView)
        view.addSubviewWithNoConstraints(greenView)

        let views = ["redView": redView, "blueView": blueView, "greenView": greenView]
        
        activateVFL(
            format: "V:|-[blueView(==redView)][greenView(==redView)][redView]-|",
            options: [.alignAllLeft, .alignAllRight],
            views: views
        )
        activateVFL(
            format: "H:|-[redView]-|",
            views: views
        )
        
        imageView.image = "core image supports qr codes".qrImage(foregroundColor: .purple, backgroundColor: .green, size: CGSize(width: 100.0, height: 100.0))
        greenView.addSubviewWithNoConstraints(imageView)
        NSLayoutConstraint(item: greenView, attribute: .centerX, relatedBy: .equal, toItem: imageView, attribute: .centerX, multiplier: 1.0, constant: 0.0).isActive = true
        NSLayoutConstraint(item: greenView, attribute: .centerY, relatedBy: .equal, toItem: imageView, attribute: .centerY, multiplier: 1.0, constant: 0.0).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

