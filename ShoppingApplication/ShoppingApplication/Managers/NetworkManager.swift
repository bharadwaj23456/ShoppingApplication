//
//  NetworkManager.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import Foundation
import UIKit



final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    static let  baseURL = "https://dummyapi.online/api"
    static let ProductsURL = baseURL + "/products"
    
    private init() { }
    

    
    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void) {
            
            let cacheKey = NSString(string: urlString)
            
            // Check cache first
            if let image = cache.object(forKey: cacheKey) {
                completed(image)
                return
            }
            
            // Validate URL
            guard let url = URL(string: urlString) else {
                completed(nil)
                return
            }
            
            // Fetch image from the network
            let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
                
                if let error = error {
                    print("Error fetching image: \(error.localizedDescription)")
                    completed(nil)
                    return
                }
                
                if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode != 200 {
                    print("Invalid HTTP response code: \(httpResponse.statusCode)")
                    completed(nil)
                    return
                }
                
                guard let data = data, let image = UIImage(data: data) else {
                    print("Failed to decode image")
                    completed(nil)
                    return
                }
                
                // Cache the image and complete
                self.cache.setObject(image, forKey: cacheKey)
                completed(image)
            }
            
            task.resume()
        }
    }

