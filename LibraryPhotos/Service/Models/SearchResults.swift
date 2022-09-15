//
//  SearchResults.swift
//  LibraryPhotos
//
//  Created by Новый пользователь on 14.09.2022.
//  Copyright © 2022 Alex Myronov. All rights reserved.
//

import Foundation

struct SearchResults: Decodable {
    let total: Int
    let results: [UnsplashPhoto]
}

struct UnsplashPhoto: Decodable {
    let width: Int
    let height: Int
    let urls: [URLKing.RawValue:String]
    
    
    enum URLKing: String {
        case raw
        case full
        case regular
        case small
        case thumb
    }
}
