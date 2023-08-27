//
//  CafeController.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/16.
//

import Foundation
import Alamofire


class CafeController: ObservableObject {
    
    @Published var cafeDetail = Cafe() // 카페 상세 정보
    
    func getCafeDetail(cafeId: String) {
        let url = host + "/api/cafes/" + cafeId
//            %7Bcafe_id%7D
        // URLRequest 객체 생성 (url 전달)
        var request = URLRequest(url: URL(string: url)!)
        // 메소드 지정
        request.httpMethod = "GET"
        // 헤더 정보 설정
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        AF.request(request).responseDecodable(of: Cafe.self) { response in
            print("alamofire 실행~~")

            switch response.result {
            case .success(let value):
                print("호출 성공 cafeInfo")
                self.cafeDetail = value
                print(self.cafeDetail)
                
            case .failure(_):
                print(response.result)
                print("호출 실패 cafeInfo")
            }
        }
            
        }
}
