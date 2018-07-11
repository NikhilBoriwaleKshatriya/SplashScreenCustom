//
//  AppDelegate.swift
//  SplashScreenCustom
//
//  Created by Nikhil Boriwale on 11/07/18.
//  Copyright © 2018 nikhilboriwale. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        self.splashscreen()
        
        return true
    }
// SPLASH SCREEN ka code yha pay likhna hey
       //  1. identifire set kro splashscreen ko
       // 2. identifire set kro main.storyboard key view controller  ko
    private func splashscreen(){
        
        let launchScreenVC = UIStoryboard.init(name: "LaunchScreen",bundle:nil)
        let rootVC = launchScreenVC.instantiateViewController(withIdentifier: "splashController")
        self.window?.rootViewController = rootVC
        self.window?.makeKeyAndVisible()
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(dismissSplashController), userInfo: nil, repeats: false)
    }
    @objc func dismissSplashController(){
        let mainVC = UIStoryboard.init(name:"Main",bundle:nil)
        let rootVC  = mainVC.instantiateViewController(withIdentifier: "initController")
        self.window?.rootViewController = rootVC
        self.window?.makeKeyAndVisible()
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

