//
//  AppDelegate.swift
//  PracticeiOS
//
//  Created by Hayato Takemoto on 2018/06/12.
//  Copyright © 2018年 Hayato Takemoto. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        print("applicationが立ち上がったよ")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationがアクティブじゃなくなったよ")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
       print("applicationがバックグラウンドに入ったよ")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationがフォアグラウンドに入ったよ")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationがアクティブになったよ")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationが終了したよ")
    }
}

