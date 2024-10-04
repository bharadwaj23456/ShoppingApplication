//
//  ProductButton.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import SwiftUI

struct ProductButton: View {
    
        let title : LocalizedStringKey
        
        var body: some View {
            
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 260, height: 50)
                .foregroundColor(.white)
                .background(Color.brandprimary)
                .cornerRadius(10)
        }
    }


#Preview {
    ProductButton(title: "Test Title")
}
