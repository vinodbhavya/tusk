//
//  AppDelegate.swift
//  STOPS
//
//  Created by vinod on 29/11/2018.
//  Copyright © 2018 bhavya. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var stops = [Stop]()
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        stops.append(Stop(id: "1:1", code: "1", name: "Quinta do Bispo: Rua da Matinha"))
        stops.append(Stop(id: "1:122" , code: "122", name: "Parceiros: Rua da Quinta"))
        stops.append(Stop(id: "1:0",code: "0" ,name: "Terminal Rodoviário"))
        stops.append(Stop(id: "1:121",code: "121" ,name: "Brogal: R. Serrada Nova"))
        stops.append(Stop(id: "1:124",code: "124" ,name: "Vale Sepal: R. Costas"))
        stops.append(Stop(id: "1:123",code: "123" ,name: "Azoia: R. Santa Catarina"))
        stops.append(Stop(id: "1:126",code: "126" ,name: "Azoia: Junta Freguesia Azoia"))
        
       
        
        
        
        //stopRepository.repository.loadStop()
        
        return true
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

