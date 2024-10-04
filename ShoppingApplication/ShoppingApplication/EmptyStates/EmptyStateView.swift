//
//  EmptyStateView.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import SwiftUI

struct EmptyStateView: View {
    let imageName : String
    let message : String
    var body: some View {
        
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
        
    }
}

#Preview {
    EmptyStateView(imageName: "empty-order", message: "You have no orders in your orders right now")
}
