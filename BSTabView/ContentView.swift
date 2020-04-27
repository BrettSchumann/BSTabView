//
//  ContentView.swift
//  BSTabView
//
//  Created by Brett Schumann on 24/04/2020.
//  Copyright © 2020 BrettSchumann. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        UIKitTabView([
            UIKitTabView.Tab(
                view: Tab1(),
                barItem: UITabBarItem(title: "First", image: UIImage(systemName: "circle.fill"), selectedImage: nil)
            ),
            UIKitTabView.Tab(
                view: Tab2(),
                barItem: UITabBarItem(title: "Second", image: UIImage(systemName: "square.fill"), selectedImage: nil)
            )
        ])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
