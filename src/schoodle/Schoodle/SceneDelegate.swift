//
//  SceneDelegate.swift
//  Schoodle
//
//  Created by Gia Nguyen on 1/9/20.
//  Copyright © 2020 Gia Nguyen. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }


        self.window = UIWindow(windowScene: windowScene)
        //self.window =  UIWindow(frame: UIScreen.main.bounds)

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let rootVC = storyboard.instantiateViewController(identifier: "ViewController") as? ViewController else {
            print("ViewController not found")
            return
        }
        let rootNC = UINavigationController(rootViewController: rootVC)
        self.window?.rootViewController = rootNC
        self.window?.makeKeyAndVisible()
    }
}
