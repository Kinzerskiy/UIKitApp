//
//  ViewController.swift
//  UIKitApp
//
//  Created by Egor on 06.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentetControl: UISegmentedControl!
    @IBOutlet var mainLable: UILabel!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup label
       
        mainLable.font = UIFont(name: "Kefa", size: 15)
        mainLable.font = mainLable.font.withSize(25)
        mainLable.textAlignment = .center
        mainLable.numberOfLines = 2
        
        
        // Setup segmented control
        segmentetControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // Setup slider
        
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        
        mainLable.text = String(slider.value)
        
    }

    @IBAction func changeSegment() {
        switch segmentetControl.selectedSegmentIndex {
        case 0:
            mainLable.text = "The first segment is selected"
            mainLable.textColor = .red
        case 1:
            mainLable.text = "The second segment is selected"
            mainLable.textColor = .yellow
        case 2:
            mainLable.text = "The third segment is selected"
            mainLable.textColor = .purple
        default: break
        }
    }
    @IBAction func sliderAction() {
        mainLable.text = String(slider.value)
    }
    
}

