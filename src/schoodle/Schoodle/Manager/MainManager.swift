//
//  MainManager.swift
//  Schoodle
//
//  Created by Gia Nguyen on 1/9/20.
//  Copyright © 2020 Gia Nguyen. All rights reserved.
//

import UIKit

class MainManager: NSObject {
    static var myClass:MainManager?
    static func sharedInstance()->MainManager{
        if(myClass == nil){
            myClass = MainManager()
        }
        return myClass ?? MainManager()
    }
    
    func pushToStudentMain(vc: UIViewController) {
        let screen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "StdMainViewController") as! StdMainViewController
        
        vc.navigationController?.pushViewController(screen, animated: true)
        
    }
    
    func getCurrentController() -> UIViewController {
        if let window = UIApplication.shared.currentWindow {
            if var topController = window.rootViewController {
                while let presentedViewController = topController.presentedViewController {
                    topController = presentedViewController
                }
                return topController
            }
            
            return (window.rootViewController)!
        }
        
        return (UIApplication.shared.keyWindow!.rootViewController)!
        
    }
}

extension UIApplication {
    var currentWindow: UIWindow? {
        connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .map({$0 as? UIWindowScene})
        .compactMap({$0})
        .first?.windows
        .filter({$0.isKeyWindow}).first
    }
}
