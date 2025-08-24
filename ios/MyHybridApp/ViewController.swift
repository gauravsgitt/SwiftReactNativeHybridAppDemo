//
//  ViewController.swift
//  MyHybridApp
//
//  Created by Gaurav Bisht on 23/08/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var goToReactNativeScreenButton: UIButton!
    
    var reactViewController: ReactViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
    }
    
    
    @IBAction func goToReactNativeScreen(_ sender: UIButton) {
        if reactViewController == nil {
            reactViewController = ReactViewController(moduleName: ModuleName.MyHybridApp.rawValue)
        }
        guard let reactViewController else { return }
        navigationController?.pushViewController(reactViewController, animated: true)
    }
}
