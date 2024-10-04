//
//  User.swift
//  ShoppingApplication
//
//  Created by Reddy Bharadwaj Chowdary on 03/10/24.
//

import Foundation


struct User : Codable {
    
  var  firstName         = ""
  var  lastName          = ""
  var  email              = ""
  var  birthday          = Date()
  var  extraNapkins      = false
  var  frequentRefill    = false
    
}
