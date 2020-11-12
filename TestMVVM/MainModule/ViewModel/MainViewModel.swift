//
//  MainViewModel.swift
//  TestMVVM
//
//  Created by Damir Lutfullin on 12.11.2020.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((String) -> ())? {get set}
    func startFetch()
    func getError()
}

final class MainViewModel: MainViewModelProtocol {
    
    
    var updateViewData: ((String) -> ())?
    
    init() {
        updateViewData?("")
    }
    
    func startFetch() {
        // start loading
        updateViewData?("start")
    }
    
    func getError() {
        updateViewData?("error")
    }
}


