//
//  ShoppingApplicationApp.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import SwiftUI

@main
struct ShoppingApplicationApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ProductsTabView().environmentObject(order)
        
        }
    }
}
