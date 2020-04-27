//
//  Tab1.swift
//  BSTabView
//
//  Created by Brett Schumann on 27/04/2020.
//  Copyright © 2020 BrettSchumann. All rights reserved.
//

import SwiftUI

struct Tab1: View {
    
    var body: some View {
        
        NavigationView {
        
            VStack(alignment: .center, spacing: 15) {
                
                Text("First View").font(.largeTitle)
                
                Text("Loaded by TabView").font(.subheadline)
                
                NavigationLink(destination: Child1()) {
                    Text("Load Child 1")
                }
                
            }.navigationBarTitle("First", displayMode: .inline)
            
        }
        
        
    }
    
}

struct Tab1_Previews: PreviewProvider {
    static var previews: some View {
        Tab1()
    }
}
