//
//  CafeDetailView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/07.
//

import SwiftUI

struct CafeDetailView: View {
    
    @ObservedObject var cafeController = CafeController()
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    @State var isPresented: Bool = false
    
    init(_ cafeId: String) {
        self.cafeController.getCafeDetail(cafeId: cafeId)
    }
    
    
    var body: some View {
        
        ScrollView {
            VStack (alignment: .leading) {
                ZStack {
                    AsyncImage(url: URL(string: "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190103_252%2F1546517415100C9KLk_JPEG%2FSSAjuqPDOhlR0A6Aeer0FLBO.jpg"))
//                        .resizable()
//                        .aspectRatio(1.0, contentMode: .fit)
//                        .clipShape(RoundedRectangle(cornerRadius: 20))
//                        .clipped() //프레임을 벗어나는 이미지 제거
                }
                IconTextLabel(labelIcon: "map", labelText: "\(cafeController.cafeDetail.data.body.address)")
                    .padding(20)


                IconTextLabel(labelIcon: "phone", labelText:  "\(cafeController.cafeDetail.data.body.contact)")
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)

                IconTextLabel(labelIcon: "heart.circle", labelText: "스탬프 \(cafeController.cafeDetail.data.body.user_stamps) / \(cafeController.cafeDetail.data.body.required_stamps)")
                    .padding(.horizontal, 20)

                Label {
                    // 쿠폰보상
                    Text("\(cafeController.cafeDetail.data.body.reward)")
                        .font(.system(size: 16))
                        .foregroundColor(Color("mainColor"))
                } icon : {
                    Image(systemName: "gift")
                        .environment(\.symbolVariants, .none)
                        .font(.system(size: 16))
                        .foregroundColor(Color("redPointColor"))
                }
                .padding(20)


                IconTextLabel(labelIcon: "quote.bubble", labelText: "\(cafeController.cafeDetail.data.body.cafe_introduction)")
                    .padding(.horizontal, 20)

                // 구분선
                Divider()
                    .padding(20)

                    Label {
                        Text("Tags")
                            .fontWeight(.bold)
                    } icon : {
                        Image(systemName: "tag")
                            .environment(\.symbolVariants, .none)
                    }
                    .foregroundColor(Color("mainColor"))
                    .font(.system(size: 20))
                    .padding(.bottom, 10)
                    .padding(.horizontal, 20)

                    // tags
                HStack() {
                    ForEach(cafeController.cafeDetail.data.body.tags, id: \.self) { tag in
                        Tags(tagName: .constant(tag))
                    }
                    .padding(.bottom, 6)
                    .padding(.trailing, 4)
                }
                .frame(width: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)

            } // vstack
            .frame(maxWidth: .infinity)
            .modifier(WhiteBox())
            .padding(30)

            // event page
            VStack {
                Image("EventImage1")
                    .resizable()
            }
            .background(.gray)
            .padding(.vertical, 30)



            // MARK: - Menu

            VStack {
                HStack {
                    Text("대표 메뉴")
                        .modifier(Title24BoldMain())
                    Spacer()
                    NavigationLink(destination: MenuView(), label: {
                        HStack {
                            Text("더보기")
                                .font(.system(size: 16))
                                .foregroundColor(Color(UIColor.systemBlue))
                            Image(systemName: "chevron.right")
                                .font(.system(size: 16))
                                .foregroundColor(Color(UIColor.systemBlue))
                        }
                    })
                }
                .padding(.horizontal, 30)

                LazyVGrid(columns: columns) {
                    ForEach((0...1), id: \.self) { _ in
                        NavigationLink {
                            MenuView()
                        } label: {
                            MenuRow()
                        }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)

            }
            .padding(.top, 30)
            .padding(.bottom, 10)


            // MARK: - review

            NavigationLink(destination: WriteReviewView(), label: {
                BrownButton(labelText: "별점 및 리뷰 남기기")
            })


            VStack {
                HStack {
                    Text("리뷰")
                        .modifier(Title24BoldMain())

                    Spacer()

                    Stars(fillStar: Int(3.5))
                        .padding(.trailing, 4)

                    Text("3.5 점")
                        .font(.system(size: 18))
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                Divider()
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)

                VStack {
                    ForEach((0...3), id: \.self) { _ in
                        ReviewRow()
                    }
                }
            }
            .padding(30)



        } // scrollView
        .navigationTitle("카페 베이그")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: FavoriteButton(isSet: .constant(true)))
    }
}

struct CafeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CafeDetailView("")
    }
}
