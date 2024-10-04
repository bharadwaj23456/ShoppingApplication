//
//  ProductListView.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import SwiftUI

struct ProductListView: View {
    
    @StateObject var viewModel = ProductListViewModel()

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.products) { product in  // Changed Products to products (lowercase)
                    ShoppingListCell(products: product)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedAppetizer = product
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("PRODUCTS")
                .disabled(viewModel.isShowingDetail)
            }
            .task {
               viewModel.fetchProducts()  // Changed getAppetizers to fetchProducts
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                ProductDetailView(Productslist: viewModel.selectedAppetizer!, isShowingdetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    ProductListView()
}
