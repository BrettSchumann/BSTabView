//
//  TabBarController.swift
//  BSTabView
//
//  Created by Brett Schumann on 27/04/2020.
//  Copyright © 2020 BrettSchumann. All rights reserved.
//

import SwiftUI

struct TabBarController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
    @Binding var selectedIndex: Int

    func makeUIViewController(context: Context) -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = controllers
        tabBarController.delegate = context.coordinator
        tabBarController.selectedIndex = 0
        return tabBarController
    }

    func updateUIViewController(_ tabBarController: UITabBarController, context: Context) {
        tabBarController.selectedIndex = selectedIndex
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UITabBarControllerDelegate {
        var parent: TabBarController

        init(_ tabBarController: TabBarController) {
            self.parent = tabBarController
        }
        
        func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
            if parent.selectedIndex == tabBarController.selectedIndex {
                popToRootViewController(viewController: viewController)
            }

            parent.selectedIndex = tabBarController.selectedIndex
        }

        fileprivate func popToRootViewController(viewController: UIViewController) {
            guard let navCon = getNavigationController(viewController: viewController)  else {
                return
            }
            
            navCon.popToRootViewController(animated: true)
        }
        
        fileprivate func getNavigationController(viewController: UIViewController) -> UINavigationController? {
            if viewController is UINavigationController {
                return viewController as? UINavigationController
            }
            
            for childViewController in viewController.children {
                if childViewController is UINavigationController {
                    return childViewController as? UINavigationController
                }
                
                if childViewController.children.count > 0 {
                    if let nav = getNavigationController(viewController: childViewController) {
                        return nav
                    }
                }
            }

            return nil
        }
        
    }
}
