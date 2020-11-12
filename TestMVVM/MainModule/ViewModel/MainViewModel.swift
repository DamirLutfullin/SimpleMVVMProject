//
//  MainViewModel.swift
//  TestMVVM
//
//  Created by Damir Lutfullin on 12.11.2020.
//

import Foundation
import Combine

protocol MainViewModelProtocol {
    var updateViewData: String { get set }
    func startFetch()
    func getError()
}

final class MainViewModel: MainViewModelProtocol, ObservableObject {

    @Published var updateViewData: String = ""
    
    func startFetch() {
        self.updateViewData = "start"
    }
    
    func getError() {
        self.updateViewData = "error"
    }
}


