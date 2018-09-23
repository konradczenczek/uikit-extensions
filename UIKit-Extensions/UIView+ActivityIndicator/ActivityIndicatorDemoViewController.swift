//
//  ActivityIndicatorDemoViewController.swift
//  UIKit-Extensions
//
//  Created by Konrad on 23/09/2018.
//  Copyright © 2018 Konrad. All rights reserved.
//

import UIKit

class ActivityIndicatorDemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // just one line to display activity indicator
        // in the center of any view
        view.activityIndicatorView.startAnimating()
    }
}
