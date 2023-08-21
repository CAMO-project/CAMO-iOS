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
    
    struct data: Codable {
        
        struct body: Codable {
            var cafe_id: String
            var cafe_name: String
            var address: String
            var contact: String
            var cafe_introduction: String
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
                user_stamps = 0
                required_stamps = 0
                tags = []
                images = []
                favorite = false
                owner = false
            }
        }
        
        
    }
    
    init() {
        time_stamp = ""
        message = ""
    }
    
    

}


/*
"cafe_id": "cafe_d3c59f3b9f2c49068aa75d3c7e43539a",
"cafe_name": "컴포즈커피 강남역사점",
"address": "서울특별시 강남구 테헤란로 101 이즈타워",
"contact": "01065218533",
"cafe_introduction": "맛있는 커피~",
"user_stamps": 0,
"required_stamps": 0,
"tags": [
    "가성비",
    "카공"
],
"images": [
    "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190103_252%2F1546517415100C9KLk_JPEG%2FSSAjuqPDOhlR0A6Aeer0FLBO.jpg"
],
"favorite": false
*/
