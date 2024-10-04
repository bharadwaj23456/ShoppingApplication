//
//  Order.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import SwiftUI

final class Order : ObservableObject {
    
    @Published var items : [ProductListingStruct] = []
    
    var totalPrice : Double  {
        Double(items.reduce(0) { $0 + $1.basePrice})
    }
    
    func add(_ appetizer: ProductListingStruct) {
        items.append(appetizer)
        
    func deleteItems(at Offesets: IndexSet ) {
            items.remove(atOffsets: Offesets)
        }

    }
    
}
