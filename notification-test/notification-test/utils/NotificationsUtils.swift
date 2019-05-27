//
//  NotificationsUtils.swift
//  notification-test
//
//  Created by Fred on 28/05/19.
//  Copyright © 2019 Fred. All rights reserved.
//

import UIKit
import Foundation
import UserNotifications

class NotificationsUtils{
    
    static func requestAuthorization(){
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            if(granted){
                print("granted")
                print(granted)
            }else if(error != nil){
                print("error")
                print(error?.localizedDescription as Any)
            }
        }
    }
    
    static func setCategory(){
        //https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/SupportingNotificationsinYourApp.html#//apple_ref/doc/uid/TP40008194-CH4-SW1
        let generalCategory = UNNotificationCategory(identifier: "GENERAL",
                                                     actions: [],
                                                     intentIdentifiers: [],
                                                     options: .customDismissAction)
        
        let center = UNUserNotificationCenter.current()
        center.setNotificationCategories([generalCategory])
    }

}

