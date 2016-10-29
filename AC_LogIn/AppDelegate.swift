//
//  AppDelegate.swift
//  AC_LogIn
//
//  Created by 洪德晟 on 2016/10/29.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    // 設定變數，將判斷是否已登入的值取出
    var check = UserDefaults.standard.integer(forKey: "checkLogIn")
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        // 判斷是否登入，分別帶入不同畫面
        if check != 1 {
            let controller = UIStoryboard(name: "LogIn", bundle: nil).instantiateViewController(withIdentifier: "logIn")
            self.window?.rootViewController = controller
        } else {
            let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tab")
            self.window?.rootViewController = controller
        }
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        
    }
    
    
}

