//
//  Child1.swift
//  BSTabView
//
//  Created by Brett Schumann on 27/04/2020.
//  Copyright © 2020 BrettSchumann. All rights reserved.
//

import SwiftUI

struct Child1: View {
    var body: some View {
        
        VStack {
            
            Text("Child 1").font(.largeTitle)
            
            Text("Loaded by Tab1 View").font(.subheadline)
            
            NavigationLink(destination: Child2()) {
                Text("Load Child 2")
            }
            
        }
        .navigationBarTitle("Child 1", displayMode: .inline)
    }
}

struct Child1_Previews: PreviewProvider {
    static var previews: some View {
        Child1()
    }
}
