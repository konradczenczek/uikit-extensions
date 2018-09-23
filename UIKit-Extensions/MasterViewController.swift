//
//  MasterViewController.swift
//  UIKit-Extensions
//
//  Created by Konrad on 23/09/2018.
//  Copyright © 2018 Konrad. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

