//
//  ProductDetailView.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let Productslist : ProductListingStruct
    
    @Binding var isShowingdetail : Bool
    
    var body: some View {
        VStack {
            ProductRemoteImage(urlString: Productslist.featuredImage)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack{
                Text(Productslist.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(Productslist.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing: 40) {
                    
                }
            }
            Spacer()
            Button {
                order.add(Productslist)
                isShowingdetail = false
            } label : {
                ProductButton(title: "$\(Productslist.basePrice, specifier: "%.2f")- Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button { isShowingdetail = false } label: { Xdismiss() }, alignment: .topTrailing)
    }
}

#Preview {
    ProductDetailView(Productslist: MockData.sampleProduct, isShowingdetail: .constant(true))
}
