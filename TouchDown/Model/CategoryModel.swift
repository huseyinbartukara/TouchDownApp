//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import Foundation

struct Category : Codable, Identifiable{
    let id : Int
    let name : String
    let image : String
}
