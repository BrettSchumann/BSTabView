//
//  Tab2.swift
//  BSTabView
//
//  Created by Brett Schumann on 27/04/2020.
//  Copyright © 2020 BrettSchumann. All rights reserved.
//

import SwiftUI

struct Tab2: View {
    
        var body: some View {
            
            NavigationView {
            
                VStack {
                    
                    Text("Second View").font(.largeTitle)
                    
                    Text("Loaded by TabView").font(.subheadline)
                    
                }.navigationBarTitle("Second", displayMode: .inline)
                
            }
            
            
        }
        
    }

struct Tab2_Previews: PreviewProvider {
    static var previews: some View {
        Tab2()
    }
}
