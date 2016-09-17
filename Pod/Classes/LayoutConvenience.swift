//
//  ConstraintConvenience.swift
//  Pods
//
//  Created by Nick DiStefano on 12/11/15.
//
//

import Foundation

public func activateVFL(format format: String, options: NSLayoutFormatOptions = [], metrics: [String : AnyObject]? = nil, views: [String : AnyObject]) {
    NSLayoutConstraint.activate(
        NSLayoutConstraint.constraints(
            withVisualFormat: format,
            options: options,
            metrics: metrics,
            views: views
        )
    )
}

public extension UIView {
    public func addSubviewWithNoConstraints(subview: UIView) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
    }
}
