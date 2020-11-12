//
//  ViewController.swift
//  TestMVVM
//
//  Created by Damir Lutfullin on 12.11.2020.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var viewModel: MainViewModel!
    
    override func viewDidLoad() {
        self.viewModel = MainViewModel()
        super.viewDidLoad()
        bining()
    }
    
    var cancelebleSet = Set<AnyCancellable>()
    
    func bining() {
        viewModel.$updateViewData
            .receive(on: RunLoop.main)
            .sink { [weak self] (char) in
                self?.label.text = char
            }
            .store(in: &cancelebleSet)
    }
    
    @IBAction func refresh() {
        viewModel.startFetch()
    }
    
    @IBAction func error() {
        viewModel.getError()
    }
}
