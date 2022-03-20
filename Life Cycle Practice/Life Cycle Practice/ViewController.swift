//
//  ViewController.swift
//  Life Cycle Practice
//
//  Created by Fedor Boretskiy on 16.02.2022.
//

import UIKit

class ViewController: UIViewController
{
    let name = "Red"
    
    override func viewDidLoad() {
        print(#fileID, #line, name, #function)
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#fileID, #line, name, #function)
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#fileID, #line, name, #function)
        print()
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#fileID, #line, name, #function)
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#fileID, #line, name, #function)
        super.viewDidDisappear(animated)
    }
}
