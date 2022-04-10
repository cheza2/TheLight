//
//  ViewController.swift
//  The Light
//
//  Created by Gen Gol on 09.04.2022.
//

import UIKit

class ViewController: UIViewController {
    var isLightOn = true
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    fileprivate func updateUi() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    @IBAction func buttonPressed() {
        isLightOn.toggle()
        updateUi()
    }
    
}

