//
//  ReactViewController.swift
//  MyHybridApp
//
//  Created by Gaurav Bisht on 24/08/25.
//

import UIKit
import React
import React_RCTAppDelegate
import ReactAppDependencyProvider

class ReactViewController: UIViewController {
    var reactNativeFactory: RCTReactNativeFactory?
    var reactNativeFactoryDelegate: RCTReactNativeFactoryDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reactNativeFactoryDelegate = ReactNativeDelegate()
        guard let reactNativeFactoryDelegate else { return }
        reactNativeFactoryDelegate.dependencyProvider = RCTAppDependencyProvider()
        reactNativeFactory = RCTReactNativeFactory(delegate: reactNativeFactoryDelegate)
        guard let reactNativeFactory else { return }
        view = reactNativeFactory.rootViewFactory.view(withModuleName: "MyHybridApp")
    }
}

class ReactNativeDelegate: RCTDefaultReactNativeFactoryDelegate {
    override func sourceURL(for bridge: RCTBridge) -> URL? {
        self.bundleURL()
    }
    
    override func bundleURL() -> URL? {
#if DEBUG
        RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")
#else
        Bundle.main.url(forResource: "main", withExtension: "jsbundle")
#endif
    }
    
}
