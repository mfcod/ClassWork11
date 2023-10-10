//
//  ViewController.swift
//  ClassWork 11
//
//  Created by Maxim Fedoseenko on 10.10.2023.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet private weak var segmentControl: UISegmentedControl!
    @IBOutlet private weak var infoLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var saveBtn: UIButton!
    @IBOutlet private weak var dataPicker: UIDatePicker!
    @IBOutlet private weak var hideLabel: UILabel!
    @IBOutlet private weak var hideSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

   
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        
        switch sender.selectedSegmentIndex {
        case 0:
            infoLabel.text = "Selected Zero"
            infoLabel.textColor = .red
        case 1:
            infoLabel.text = "Selected One"
            infoLabel.textColor = .green
        case 2:
            infoLabel.text = "Selected Two"
            infoLabel.textColor = .yellow
        default:
            break
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        //sender - является ссылкой на наш слайдер
        print(sender.value)
        infoLabel.text = String(slider.value)
    }
    
    @IBAction func textFieldAction(_ sender: UITextField) {
        print(sender.text)
    
        
    }
    
    @IBAction func bntTapped(_ sender: UIButton) {
        if textField.text != "" {
            infoLabel.text = textField.text
            infoLabel.textColor = .black
        } else {
            infoLabel.text = "Not empty"
            infoLabel.textColor = .red
        }
    }
    
    @IBAction func dataPicker(_ sender: UIDatePicker) {
        
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        print(sender.isOn)
        hideLabel.text = sender.isOn ? "Good" : "Bad"
    }
    
}
