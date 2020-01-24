//
//  ContentView.swift
//  SwiftUI_Practices
//
//  Created by Apple on 24/01/20.
//  Copyright © 2020 Code Brew Labs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")

    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Text(section.name)
                    
                    ForEach(section.items) { item in
                        Text(item.name)
                    }
                    
                }
            }.navigationBarTitle("Recipe")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
