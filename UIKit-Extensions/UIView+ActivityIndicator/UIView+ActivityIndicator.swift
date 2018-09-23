//
//  UIView+ActivityIndicator.swift
//  UIKit-Extensions
//
//  Created by Konrad on 23/09/2018.
//  Copyright © 2018 Konrad. All rights reserved.
//

import UIKit

extension UIView {

    private struct AssociatedKeys {
        static var activtyIndicatorView = "UIView_activityIndicatorView"
    }

    var activityIndicatorView: UIActivityIndicatorView {
        var view = objc_getAssociatedObject(self, &AssociatedKeys.activtyIndicatorView)
        if view != nil {
            return view as! UIActivityIndicatorView
        }
        view = createActivityIndicatorView()
        objc_setAssociatedObject(self, &AssociatedKeys.activtyIndicatorView, view!, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        return view as! UIActivityIndicatorView
    }

    private func createActivityIndicatorView() -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .gray)
        view.hidesWhenStopped = true
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return view
    }
}
