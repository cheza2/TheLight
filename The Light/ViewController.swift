//
//  ViewController.swift
//  The Light
//
//  Created by Gen Gol on 09.04.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    var isLightOn = true
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    fileprivate func updateUi() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn.toggle()
        updateUi()
    }
}

