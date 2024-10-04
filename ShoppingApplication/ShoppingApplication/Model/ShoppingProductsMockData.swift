//
//  ShoppingProductsMockData.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import Foundation


struct ProductListingStruct: Codable, Identifiable {
    let id: Int
    let productCategory: String
    let name: String
    let brand: String
    let description: String
    let basePrice: Double
    let inStock: Bool
    let stock: Int
    let featuredImage: String
    let thumbnailImage: String
    let storageOptions: [String]
    let colorOptions: [String]
    let display: String?
    let CPU: String?
    let GPU: String?
    let camera: Camera?

    struct Camera: Codable {
        let rearCamera: String
        let frontCamera: String
    }
}


struct MockData {
    
    static let sampleProduct = ProductListingStruct(
        id: 0001,
        productCategory: "Electronics",
        name: "IPhone 15",
        brand: "Apple",
        description: "This is the description for iPhone 15. It's the latest model with incredible features.",
        basePrice: 999,
        inStock: true,
        stock: 15,
        featuredImage: "iphone_15_featured.jpg",
        thumbnailImage: "iphone_15_thumb.jpg",
        storageOptions: ["128GB", "256GB", "512GB"],
        colorOptions: ["Graphite", "Silver", "Gold", "Pacific Blue"],
        display: "6.1-inch OLED",
        CPU: "A15 Bionic",
        GPU: "Apple-designed GPU",
        camera: ProductListingStruct.Camera(rearCamera: "12 MP", frontCamera: "12 MP")
    )
    
    static let productList = [sampleProduct, sampleProduct, sampleProduct, sampleProduct]
    
    static let orderItemOne = ProductListingStruct(
        id: 0002,
        productCategory: "Electronics",
        name: "IPhone 16",
        brand: "Apple",
        description: "This is the description for iPhone 16. It's even more advanced than its predecessor.",
        basePrice: 1099,
        inStock: true,
        stock: 10,
        featuredImage: "iphone_16_featured.jpg",
        thumbnailImage: "iphone_16_thumb.jpg",
        storageOptions: ["128GB", "256GB", "512GB"],
        colorOptions: ["Graphite", "Silver", "Gold", "Pacific Blue"],
        display: "6.5-inch OLED",
        CPU: "A16 Bionic",
        GPU: "Apple-designed GPU",
        camera: ProductListingStruct.Camera(rearCamera: "12 MP", frontCamera: "12 MP")
    )
    
    static let orderItemTwo = ProductListingStruct(
        id: 0003,
        productCategory: "Electronics",
        name: "IPhone 16 Plus",
        brand: "Apple",
        description: "This is the description for iPhone 16 Plus. Bigger and better.",
        basePrice: 1199,
        inStock: true,
        stock: 12,
        featuredImage: "iphone_16plus_featured.jpg",
        thumbnailImage: "iphone_16plus_thumb.jpg",
        storageOptions: ["128GB", "256GB", "512GB"],
        colorOptions: ["Graphite", "Silver", "Gold", "Pacific Blue"],
        display: "6.7-inch OLED",
        CPU: "A16 Bionic",
        GPU: "Apple-designed GPU",
        camera: ProductListingStruct.Camera(rearCamera: "12 MP", frontCamera: "12 MP")
    )
    
    static let orderItemThree = ProductListingStruct(
        id: 0004,
        productCategory: "Electronics",
        name: "IPhone 16 ProMax",
        brand: "Apple",
        description: "This is the description for iPhone 16 ProMax. Maximum power, maximum performance.",
        basePrice: 1299,
        inStock: true,
        stock: 8,
        featuredImage: "iphone_16promax_featured.jpg",
        thumbnailImage: "iphone_16promax_thumb.jpg",
        storageOptions: ["128GB", "256GB", "512GB"],
        colorOptions: ["Graphite", "Silver", "Gold", "Pacific Blue"],
        display: "6.8-inch OLED",
        CPU: "A16 Bionic",
        GPU: "Apple-designed GPU",
        camera: ProductListingStruct.Camera(rearCamera: "12 MP", frontCamera: "12 MP")
    )
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
