//
//  TextModifiers.swift
//  CAMO
//
//  Created by 장세희 on 2023/08/06.
//

import SwiftUI

/**
 Title
 - 28 Bold
 - 24 Bold
 
 Body
 - 20 Bold
 - 20 Medium
 - 18 Medium
 - 16 Medium
 - 14 Medium
 */

struct Title28BoldMain: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 28))
            .fontWeight(.bold)
            .foregroundColor(Color("mainColor"))
    }
}

struct Title24BoldMain: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 24))
            .fontWeight(.bold)
            .foregroundColor(Color("mainColor"))
    }
}

struct Title24Bold: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 24))
            .fontWeight(.bold)
    }
}

struct Title20BoldMain: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .fontWeight(.bold)
            .foregroundColor(Color("mainColor"))
    }
}

struct Title20Bold: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .fontWeight(.bold)
    }
}

struct Title16Bold: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16))
            .fontWeight(.bold)
            .foregroundColor(Color("DefaultTextColor"))
    }
}

struct Body16Gray: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16))
            .foregroundColor(.gray)
    }
}

struct Body14Gray: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .foregroundColor(.gray)
    }
}
