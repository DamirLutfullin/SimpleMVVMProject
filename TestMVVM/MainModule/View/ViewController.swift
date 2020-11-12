//
//  ViewController.swift
//  TestMVVM
//
//  Created by Damir Lutfullin on 12.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    let viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bining()
    }
    
    private func bining () {
        viewModel.updateViewData = { [weak self] text in
            self?.label.text = text
        }
    }
    
    @IBAction func refresh() {
        viewModel.startFetch()
    }
    
    @IBAction func error() {
        viewModel.getError()
    }
    
}

