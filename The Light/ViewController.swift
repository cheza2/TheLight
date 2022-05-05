//
//  ViewController.swift
//  The Light
//
//  Created by Gen Gol on 09.04.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // MARK: - Properties
    var isLightOn = 1
    var isTorchOn = true
    
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
    case 1: view.backgroundColor = .purple
    case 2: view.backgroundColor = .red
    case 3: view.backgroundColor = .yellow
    default: break }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if isLightOn == 3 {
    isLightOn = 1
    }
    else {
    isLightOn = isLightOn + 1
    }
    updateUi()
    //flashlight initialization function
    func toggleTorch(on:Bool) {
    guard
    let device = AVCaptureDevice.default(for: AVMediaType.video),device.hasTorch
    else {return}
    do{
    try device.lockForConfiguration()
    } catch {
    print("Torch could not beused")
    }
    }
    }
    //flashlight control function
    @IBAction func flash(_ sender: Any) {
    let device = AVCaptureDevice.default(for: AVMediaType.video)
    if ((device?.hasTorch) != nil) {
    do{
    try device?.lockForConfiguration()
    device?.torchMode = device?.torchMode == AVCaptureDevice.TorchMode.on ? .off : .on
    device?.unlockForConfiguration()
    } catch {
    print(error)
    }
    }
    }
    }

