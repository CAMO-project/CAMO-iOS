//
//  Tag.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/26.
//

import Foundation

struct Tag: Codable, Identifiable {
    let id = UUID()
    
    var tag_name : String
    
    init() {
        tag_name = ""
    }
    
}
