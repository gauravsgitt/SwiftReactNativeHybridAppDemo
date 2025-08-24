//
//  NavigationBridge.swift
//  MyHybridApp
//
//  Created by Gaurav Bisht on 24/08/25.
//

import Foundation
import React

@objc(NavigationBridge)
class NavigationBridge: NSObject {
    let keyWindow = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .compactMap({$0 as? UIWindowScene})
            .first?.windows
            .filter({$0.isKeyWindow}).first
    
    @objc static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    @objc func navigateTo(_ moduleName: String) {
        DispatchQueue.main.async {
            if let nav = self.keyWindow?.rootViewController as? UINavigationController {
                let vc = ReactViewController(moduleName: moduleName)
                nav.pushViewController(vc, animated: true)
            }
        }
    }
    
    @objc func navigateToSwift(_ screenName: String) {
        DispatchQueue.main.async {
            if let nav = self.keyWindow?.rootViewController as? UINavigationController {
                if screenName == "Detail" {
                    let detailVC = ViewController()
                    nav.pushViewController(detailVC, animated: true)
                }
            }
        }
    }
}
