//
//  ContentView.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import SwiftUI

struct ProductsTabView: View {
    
    @EnvironmentObject var order: Order

    var body: some View {
        TabView {
            ProductListView()
                .tabItem { Label("Home", systemImage: "house")  }
            AccountView()
                 .tabItem {  Label("Account", systemImage: "person")  }
            OrderView()
                 .tabItem {  Label("OrderView", systemImage: "bag")  }
                 .badge(order.items.count)
        }
        .accentColor(Color("brandprimary"))
    }
}

#Preview {
    ProductsTabView()
}
