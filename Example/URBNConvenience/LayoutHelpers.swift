//
//  LayoutHelpers.swift
//  URBNConvenience
//
//  Created by Nick DiStefano on 11/24/15.
//  Copyright © 2015 jgrandelli. All rights reserved.
//

import Foundation
import UIKit

func activateVFL(format: String, options: NSLayoutFormatOptions = [], metrics: [String : AnyObject]? = nil, views: [String : AnyObject]) {
    NSLayoutConstraint.activateConstraints(
        NSLayoutConstraint.constraintsWithVisualFormat(
            format,
            options: options,
            metrics: metrics,
            views: views
        )
    )
}