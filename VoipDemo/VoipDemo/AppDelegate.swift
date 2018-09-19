//
//  AppDelegate.swift
//  VoipDemo
//
//  Created by Andrei Ermoshin on 29/08/2018.
//  Copyright © 2018. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var sipStack: ISipStack?
    var dialogUsageManager: HDialogUsageManager?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        dialogUsageManager = HDialogUsageManager()
        sipStack = dialogUsageManager?.sipStack()
        // it is recommended to add transport using SipStack and not DialogUsageManager
        sipStack?.add(UDP, for: 5060)

        return true
    }
}

