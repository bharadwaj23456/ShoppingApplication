//
//  RemoteImage.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import SwiftUI


final class ImageLoader : ObservableObject {
    
    @Published var image : Image? = nil
    
    func load(fromURLString urlString : String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}


struct RemoteImage : View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable()  ?? Image("food-placeholder").resizable()
    }
}


struct ProductRemoteImage : View {
    
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear {
                print("Loading image from: \(urlString)")
                //MARK: CHECK WITH OTHER LINKS THE LINKS IN THIS API ARE NOT WORKING BUT ALL THE OTHER LINKS ARE WORKING UNCOMMENT BELOW LINE IF YOU WANNA CHECK OTHER LINKS AND CHANGE THE IMAGE LINK.
          //      imageLoader.load(fromURLString: "https://via.placeholder.com/300.png")
                
    //MARK: COMMENT BELOW LINE WHILE CHECKINGWITH OTHER LINKS.
                imageLoader.load(fromURLString: urlString)
            }
        
    }
}
