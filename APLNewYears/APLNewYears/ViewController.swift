//
//  ViewController.swift
//  APLNewYears
//
//  Created by Võ Anh Trưởng on 04/02/2022.
//

import UIKit
import SAConfettiView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        let confettiView = SAConfettiView(frame: self.view.bounds)
        confettiView.type = .Star
//        confettiView.type = .Image(UIImage(named: "smiley"))
        confettiView.colors = [UIColor.red, UIColor.green, UIColor.blue]
        confettiView.intensity = 0.75
        confettiView.startConfetti()
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            confettiView.stopConfetti()
        }
        self.view.addSubview(confettiView)
    }


}

