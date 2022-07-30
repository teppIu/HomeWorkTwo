//
//  ViewController.swift
//  HomeWorkTwo
//
//  Created by Stefan Iurin on 30.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redView.backgroundColor = .red
        redView.alpha = 0.5
        redView.layer.cornerRadius = 75
        
        yellowView.backgroundColor = .yellow
        yellowView.alpha = 0.5
        yellowView.layer.cornerRadius = 75
        
        greenView.backgroundColor = .green
        greenView.alpha = 0.5
        greenView.layer.cornerRadius = 75
        
        nextButton.tintColor = .black
        nextButton.backgroundColor = .white
        nextButton.layer.cornerRadius = 17
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        nextButton.setTitle("START", for: .normal)
        
    }

    @IBAction func changeColorBotton() {
        if redView.alpha == 0.5 {
            redView.alpha = 1
            nextButton.setTitle("NEXT", for: .normal)
        } else if redView.alpha == 1 {
            redView.alpha = 0.4
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.4
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.4
            redView.alpha = 1
        }
    }
        
    
    
}

