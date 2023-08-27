//
//  Cafe.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/16.
//

import Foundation

struct Cafe : Codable {
    
    let time_stamp: String
    let message: String
    let data: Data

    struct Data: Codable {
        
        let body: Body
        
        struct Body: Codable {
            var cafe_id: String
            var cafe_name: String
            var address: String
            var contact: String
            var cafe_introduction: String
            var reward: String
            var user_stamps: Int
            var required_stamps: Int
            var tags: [String]
            var images: [String]
            var favorite: Bool
            var owner: Bool
            
            init() {
                cafe_id = ""
                cafe_name = ""
                address = ""
                contact = ""
                cafe_introduction = ""
                reward = ""
                user_stamps = 0
                required_stamps = 0
                tags = []
                images = []
                favorite = false
                owner = false
            }
        }
        
        init() {
            body = Body.init()
        }
    }
    
    
    init() {
        time_stamp = ""
        message = ""
        data = Data.init()
    }
}
