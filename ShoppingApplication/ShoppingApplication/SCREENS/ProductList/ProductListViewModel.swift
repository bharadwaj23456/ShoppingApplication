//
//  ProductListViewModel.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import SwiftUI
import Combine

@MainActor final class ProductListViewModel: ObservableObject {
    
    @Published var products: [ProductListingStruct] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: ProductListingStruct?
    
    func fetchProducts() {
        guard let url = URL(string: "https://dummyapi.online/api/products") else {
            print("Invalid URL")
            return
        }

        isLoading = true
        
        // Fetch the data
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
            }
            
            if let error = error {
                print("Error fetching data: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                print("No data found")
                return
            }

            // Decode JSON
            do {
                let fetchedProducts = try JSONDecoder().decode([ProductListingStruct].self, from: data)
                DispatchQueue.main.async {
                    self.products = fetchedProducts
                }
            } catch {
                print("Failed to decode JSON: \(error.localizedDescription)")
            }
        }.resume()
    }
}
