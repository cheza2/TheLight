//
//  ViewController.swift
//  The Light
//
//  Created by Gen Gol on 09.04.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    var isLightOn = 1
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    fileprivate func updateUi() {
    switch isLightOn {
    case 1: view.backgroundColor = .red
    case 2: view.backgroundColor = .yellow
    case 3: view.backgroundColor = .green
    default: print("error") }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if isLightOn == 3 {
    isLightOn = 1
    }
    else {
    isLightOn = isLightOn + 1
    }

    updateUi()
    }
    }

