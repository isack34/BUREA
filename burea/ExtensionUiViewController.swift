//
//  ExtensionUiViewController.swift
//  burea
//
//  Created by Isaac Rosas on 10/04/19.
//  Copyright © 2019 Isaac Rosas. All rights reserved.
//
import UIKit
import Foundation
import MBProgressHUD

extension UIViewController {
    func showProgress(){
        let loadingNotification = MBProgressHUD.showAdded(to: view, animated: true)
        loadingNotification.mode = MBProgressHUDMode.indeterminate
        loadingNotification.label.text = "Loading"
    }
    func hideProgress(){
        MBProgressHUD.hideAllHUDs(for: view, animated: true)
        MBProgressHUD.hide(for: self.view, animated: true)
    }
}
