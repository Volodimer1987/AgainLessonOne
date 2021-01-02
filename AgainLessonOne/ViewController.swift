//
//  ViewController.swift
//  AgainLessonOne
//
//  Created by vladimir gennadievich on 31.12.2020.
//

import UIKit

enum ShowTextLabelCondition {
    case showed
    case hidden
}

class ViewController: UIViewController {
    
    @IBOutlet var hellowWorldLabel: UILabel!
    @IBOutlet var textBattonLabel: UIButton!
    
    private var textButtonCondition:ShowTextLabelCondition = .hidden
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hellowWorldLabel.isHidden = true

    }

    @IBAction func StartButtomPressed() {
        
        switch textButtonCondition {
        
        case .hidden:
            textButtonCondition = .showed
            hellowWorldLabel.isHidden = false
            textBattonLabel.setTitle("Hidden text", for: .normal)
            
        case .showed:
            textButtonCondition = .hidden
            hellowWorldLabel.isHidden = true
            textBattonLabel.setTitle("Show text", for: .normal)

        }
        
        
    }
    
}

