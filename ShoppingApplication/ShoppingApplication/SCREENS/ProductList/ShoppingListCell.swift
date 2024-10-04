//
//  ShoppingListCell.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import Foundation
import SwiftUI

struct ShoppingListCell: View {
    
    let products : ProductListingStruct

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: products.featuredImage)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            }

            VStack(alignment : .leading , spacing: 5) {
                Text(products.name)
                    .font(.title3)
                    .fontWeight(.medium)
                
                Text("$\(products.basePrice,specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
                
            }
            .padding(.leading)
            
        }
    }
    
}


#Preview {
    ShoppingListCell(products: MockData.sampleProduct)
}
