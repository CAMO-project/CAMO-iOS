//
//  WriteReviewView.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/10.
//

import SwiftUI

struct WriteReviewView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State var ratingValue : Int = 5
    
    var maxStar = 5
    
    var offImage = Image(systemName: "star")
    var onImage = Image(systemName: "star.fill")
    
    @State var inputReview : String = ""
    @State var placeHolder : String = "리뷰 작성하기"
    
    @State var overflowTextAlert : Bool = false
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                Text("별점")
                    .modifier(Title20BoldMain())
                    .padding(20)
                
                
                HStack(spacing: 0) {
                    // 별점 이미지
                    ForEach(1..<maxStar + 1, id:\.self) {number in
                        starImage(for: number)
                            .font(.system(size: 20))
                            .foregroundColor(.yellow)
                            .onTapGesture {
                                ratingValue = number
                            }
                    }
                  
                } // hstack

                // 별점 숫자
                Text("\(ratingValue) / 5")
                    .font(.system(size: 16))
                    .padding(20)
                
            }  // vstack
            .frame(maxWidth: .infinity)
            .background(Color("bgColor"))
            .border(Color.black.opacity(0), width: 0)
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 0)
            .padding(30)
        
            
            // 리뷰 쓰기
            VStack {
                Text("리뷰 작성")
                    .modifier(Title20BoldMain())
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                Divider()
                
                ZStack(alignment: .topLeading) {
                    // 텍스트 작성
                    TextEditor(text: $inputReview)
                        .font(.system(size: 16))
                        .lineSpacing(6)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                        .padding(.top, 10).ignoresSafeArea()
                        .scrollContentBackground(.hidden)
                        .background(Color("bgColor"))
                    if inputReview.isEmpty {
                        Text(placeHolder)
                            .modifier(Body16Gray())
                            .lineSpacing(6)
                            .padding(.top, 18).ignoresSafeArea()
                            .padding(.horizontal, 24)
                    }
                
                    
                } // zstack
                .frame(maxWidth: .infinity, minHeight: 300)
                
                
                Text("\(inputReview.count) / 500")
                    .font(.system(size: 16))
                    .padding(.bottom, 20)
                    .foregroundColor(inputReview.count <= 500 ? Color("DefaultTextColor") : Color("redPointColor"))
                    

                
                
            }
            .background(Color("bgColor"))
            .border(Color.black.opacity(0), width: 0)
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 0)
            .padding(.horizontal, 30)
            .padding(.top, 0).ignoresSafeArea()
            .alert(isPresented: $overflowTextAlert) {
                Alert(title: Text("글자수 제한"),
                      message: Text("리뷰는 500자 이내로 작성해주세요"),
                      dismissButton: .default(Text("확인")))
            }
            
        }
        .navigationTitle("별점 및 리뷰 남기기")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            if (inputReview.count > 500) {
                    overflowTextAlert = true
            } else {
                // submit
                dismiss()
            }
        }, label: {
            Text("확인")
        }))
        .background(Color("bgColor"))

        
    }
    
    func starImage(for number: Int) -> Image {
        if number > ratingValue {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
        
}

struct WriteReviewView_Previews: PreviewProvider {
    static var previews: some View {
        WriteReviewView()
    }
}
