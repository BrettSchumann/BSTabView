//
//  Child2.swift
//  BSTabView
//
//  Created by Brett Schumann on 27/04/2020.
//  Copyright © 2020 BrettSchumann. All rights reserved.
//

import SwiftUI

struct Child2: View {
        var body: some View {
            
            VStack {
                
                Text("Child 2").font(.largeTitle)
                
                Text("Loaded by Child 1 View").font(.subheadline)
                
            }
            .navigationBarTitle("Child 2", displayMode: .inline)
        }
    }

struct Child2_Previews: PreviewProvider {
    static var previews: some View {
        Child2()
    }
}
