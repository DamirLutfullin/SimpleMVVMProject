//
//  ViewData.swift
//  TestMVVM
//
//  Created by Damir Lutfullin on 12.11.2020.
//

import Foundation

enum ViewData {
    case initial
    case loading(Data)
    case success(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let description: String?
        let numberPhone: String?
    }
}
