//
//  CafeDetailView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/07.
//

import SwiftUI

struct CafeDetailView: View {
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    @State var isPresented: Bool = false
    
    var body: some View {
        
        ScrollView {
            VStack (alignment: .leading) {

                Image("CafeSampleImage1")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .clipped() //프레임을 벗어나는 이미지 제거

                IconTextLabel(labelIcon: .constant("map"), labelText: .constant("충청남도 서북구 천안대로 1223-24 천안대로 1223-24 천안대로  1223-24 안녕하세요 카페 베이그 입니다 즐거운 하루 보내세요 행복하세요 배고파요"))
                    .padding(20)


                IconTextLabel(labelIcon: .constant("phone"), labelText: .constant("041-1111-2222"))
                    .padding(.horizontal, 20)

                HStack {
                    IconTextLabel(labelIcon: .constant("heart.circle"), labelText: .constant("스탬프 0 / 10"))
                        .padding(.trailing, 20)

                    Label {
                        // 쿠폰보상
                        Text("아이스 아메리카노")
                            .font(.system(size: 14))
                            .lineLimit(1)
                            .foregroundColor(.gray)
                    } icon : {
                        Image(systemName: "gift")
                            .environment(\.symbolVariants, .none)
                            .font(.system(size: 14))
                            .foregroundColor(Color("redPointColor"))
                    }
                    Spacer()

                }
                .padding(20)

                IconTextLabel(labelIcon: .constant("quote.bubble"), labelText: .constant("한줄소개 한줄 소개한줄소개 한줄 소개한줄소개 한줄 소개한줄소개 한줄 소개한줄소개 한줄 소개한줄소개 한줄 소개 안녕하세요 카페 베이그 입니다 즐거운 하루 보내세요 행복하세요 배고파요 개 한줄 소개한줄소개 한줄 소개한줄소개 한줄 소개 안녕하세요 카페 베이그 입니다 즐거운 하루 보내세요 행복하세요 배고파요"))
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
                    .padding(.bottom, 20)
                    .padding(.horizontal, 20)

                    // tags
//                    FlowLayout(tagsModel) { tag in
//                    Tags(tagName: .constant("감성카페"))
//                      }
//                      .padding()

            } // vstack
            .frame(maxWidth: .infinity)
            .modifier(WhiteBox())
            .padding(.vertical, 30)
            .padding(.horizontal, 30)

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
                BrownButton(labelText: "별점 및 리뷰 남기기", labelIcon: "square.and.pencil")
            })


            VStack {
                HStack {
                    Text("리뷰")
                        .modifier(Title24BoldMain())

                    Spacer()

                    Stars(fillStar: Int(3.5))
                        .padding(.trailing, 4)

                    Text("3.5 점")
                        .font(.system(size: 20))
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
        
    }
}

struct CafeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CafeDetailView()
    }
}
