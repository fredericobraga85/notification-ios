//
//  AlertViewUtils.swift
//  notification-test
//
//  Created by Fred on 27/05/19.
//  Copyright © 2019 Fred. All rights reserved.
//

import Foundation

class AlertViewUtils{
    
    static func showAlert(uiViewController:UIViewController, title:String = "New Notification", message:String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle:.alert)
        let actionOk = UIAlertAction(title:"Ok", style:.default, handler: nil)
        alertController.addAction(actionOk)
        uiViewController.present(alertController, animated:true, completion:nil)
    }
}
