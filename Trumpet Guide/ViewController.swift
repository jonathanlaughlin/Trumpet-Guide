//
//  ViewController.swift
//  Trumpet Guide
//
//  Created by jlaughli on 5/3/18.
//  Copyright © 2018 Jonathan Laughlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var sharpButton: UIButton!
    
    @IBOutlet weak var flatButton: UIButton!
    
    @IBOutlet weak var valveOne: UIImageView!
    
    @IBOutlet weak var valveTwo: UIImageView!
    
    @IBOutlet weak var valveThree: UIImageView!
    
    @IBOutlet weak var pitchLabel: UILabel!
    
    @IBOutlet weak var sharpFlatNaturalLabel: UILabel!
    
    @IBOutlet weak var pitchPickerView: UIPickerView!
    
    let notes = ["F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6"]
    
    override func viewDidLoad() {
        
        pitchPickerView.delegate = self
        pitchPickerView.dataSource = self
        
        super.viewDidLoad()
        
        evaluateAndFind()
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return notes.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return notes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pitchLabel.text = notes[row]
        evaluateAndFind()
    }
    
    @IBAction func sharpButtonPressed(_ sender: Any) {

        if sharpFlatNaturalLabel.text == "Natural" {
            sharpFlatNaturalLabel.text = "Sharp"
        }
        else if sharpFlatNaturalLabel.text == "Sharp" {
            sharpFlatNaturalLabel.text = "Double Sharp"
        }
        else if sharpFlatNaturalLabel.text == "Flat" {
            sharpFlatNaturalLabel.text = "Natural"
        }
        else if sharpFlatNaturalLabel.text == "Double Flat" {
            sharpFlatNaturalLabel.text = "Flat"
        }
        
        evaluateAndFind()
    }
    
    @IBAction func flatButtonPressed(_ sender: Any) {
        
        if sharpFlatNaturalLabel.text == "Natural" {
            sharpFlatNaturalLabel.text = "Flat"
        }
        else if sharpFlatNaturalLabel.text == "Flat" {
            sharpFlatNaturalLabel.text = "Double Flat"
        }
        else if sharpFlatNaturalLabel.text == "Sharp" {
            sharpFlatNaturalLabel.text = "Natural"
        }
        else if sharpFlatNaturalLabel.text == "Double Sharp" {
            sharpFlatNaturalLabel.text = "Sharp"
        }
        
        evaluateAndFind()
    }
    
    func evaluateAndFind() {
        
        let pitch = pitchLabel.text
        
        let altered = sharpFlatNaturalLabel.text
        
        if pitch == "F3" {
            if altered == "Natural" {
                valvesRed()
            }
            else if altered == "Flat" {
                valvesRed()
            }
            else if altered == "Double Flat" {
                valvesRed()
            }
            else if altered == "Sharp" {
                valves123()
            }
            else if altered == "Double Sharp" {
                valves13()
            }
        }
        
        if pitch == "G3" {
            if altered == "Natural" {
                valves13()
            }
            else if altered == "Flat" {
                valves123()
            }
            else if altered == "Double Flat" {
                valvesRed()
            }
            else if altered == "Sharp" {
                valves23()
            }
            else if altered == "Double Sharp" {
                valves12()
            }
        }

        if pitch == "A3" {
            if altered == "Natural" {
                valves12()
            }
            else if altered == "Flat" {
                valves23()
            }
            else if altered == "Double Flat" {
                valves13()
            }
            else if altered == "Sharp" {
                valves1()
            }
            else if altered == "Double Sharp" {
                valves2()
            }
        }
 
        if pitch == "B3" {
            if altered == "Natural" {
                valves2()
            }
            else if altered == "Flat" {
                valves1()
            }
            else if altered == "Double Flat" {
                valves12()
            }
            else if altered == "Sharp" {
                valvesOpen()
            }
            else if altered == "Double Sharp" {
                valves12()
            }
        }
        
        if pitch == "C4" {
            if altered == "Natural" {
                valvesOpen()
            }
            else if altered == "Flat" {
                valves2()
            }
            else if altered == "Double Flat" {
                valves1()
            }
            else if altered == "Sharp" {
                valves123()
            }
            else if altered == "Double Sharp" {
                valves13()
            }
        }
        
        if pitch == "D4" {
            if altered == "Natural" {
                valves13()
            }
            else if altered == "Flat" {
                valves123()
            }
            else if altered == "Double Flat" {
                valvesOpen()
            }
            else if altered == "Sharp" {
                valves23()
            }
            else if altered == "Double Sharp" {
                valves12()
            }
        }
        
        if pitch == "E4" {
            if altered == "Natural" {
                valves12()
            }
            else if altered == "Flat" {
                valves23()
            }
            else if altered == "Double Flat" {
                valves13()
            }
            else if altered == "Sharp" {
                valves1()
            }
            else if altered == "Double Sharp" {
                valves2()
            }
        }
        
        if pitch == "F4" {
            if altered == "Natural" {
                valves1()
            }
            else if altered == "Flat" {
                valves12()
            }
            else if altered == "Double Flat" {
                valves23()
            }
            else if altered == "Sharp" {
                valves2()
            }
            else if altered == "Double Sharp" {
                valvesOpen()
            }
        }
        
        if pitch == "G4" {
            if altered == "Natural" {
                valvesOpen()
            }
            else if altered == "Flat" {
                valves2()
            }
            else if altered == "Double Flat" {
                valves1()
            }
            else if altered == "Sharp" {
                valves23()
            }
            else if altered == "Double Sharp" {
                valves12()
            }
        }
        
        if pitch == "A4" {
            if altered == "Natural" {
                valves12()
            }
            else if altered == "Flat" {
                valves23()
            }
            else if altered == "Double Flat" {
                valvesOpen()
            }
            else if altered == "Sharp" {
                valves1()
            }
            else if altered == "Double Sharp" {
                valves2()
            }
        }
        
        if pitch == "B4" {
            if altered == "Natural" {
                valves2()
            }
            else if altered == "Flat" {
                valves1()
            }
            else if altered == "Double Flat" {
                valves12()
            }
            else if altered == "Sharp" {
                valvesOpen()
            }
            else if altered == "Double Sharp" {
                valves12()
            }
        }
        
        if pitch == "C5" {
            if altered == "Natural" {
                valvesOpen()
            }
            else if altered == "Flat" {
                valves2()
            }
            else if altered == "Double Flat" {
                valves1()
            }
            else if altered == "Sharp" {
                valves12()
            }
            else if altered == "Double Sharp" {
                valves1()
            }
        }
        
        if pitch == "D5" {
            if altered == "Natural" {
                valves1()
            }
            else if altered == "Flat" {
                valves12()
            }
            else if altered == "Double Flat" {
                valvesOpen()
            }
            else if altered == "Sharp" {
                valves2()
            }
            else if altered == "Double Sharp" {
                valvesOpen()
            }
        }
        
        if pitch == "E5" {
            if altered == "Natural" {
                valvesOpen()
            }
            else if altered == "Flat" {
                valves2()
            }
            else if altered == "Double Flat" {
                valves1()
            }
            else if altered == "Sharp" {
                valves1()
            }
            else if altered == "Double Sharp" {
                valves2()
            }
        }
        
        if pitch == "F5" {
            if altered == "Natural" {
                valves1()
            }
            else if altered == "Flat" {
                valvesOpen()
            }
            else if altered == "Double Flat" {
                valves2()
            }
            else if altered == "Sharp" {
                valves2()
            }
            else if altered == "Double Sharp" {
                valvesOpen()
            }
        }
        
        if pitch == "G5" {
            if altered == "Natural" {
                valvesOpen()
            }
            else if altered == "Flat" {
                valves2()
            }
            else if altered == "Double Flat" {
                valves1()
            }
            else if altered == "Sharp" {
                valves23()
            }
            else if altered == "Double Sharp" {
                valves12()
            }
        }
        
        if pitch == "A5" {
            if altered == "Natural" {
                valves12()
            }
            else if altered == "Flat" {
                valves23()
            }
            else if altered == "Double Flat" {
                valvesOpen()
            }
            else if altered == "Sharp" {
                valves1()
            }
            else if altered == "Double Sharp" {
                valves2()
            }
        }
        
        if pitch == "B5" {
            if altered == "Natural" {
                valvesOpen()
            }
            else if altered == "Flat" {
                valves1()
            }
            else if altered == "Double Flat" {
                valves12()
            }
            else if altered == "Sharp" {
                valvesOpen()
            }
            else if altered == "Double Sharp" {
                valvesRed()
            }
        }
        
        if pitch == "C6" {
            if altered == "Natural" {
                valvesOpen()
            }
            else if altered == "Flat" {
                valves2()
            }
            else if altered == "Double Flat" {
                valves1()
            }
            else if altered == "Sharp" {
                valvesRed()
            }
            else if altered == "Double Sharp" {
                valvesRed()
            }
        }
    }
    
    //MARK: methods that return the various valve patterns
    
    func valves1() {
        
        valveOne.image = UIImage(named: "valve-down.png")
        valveTwo.image = UIImage(named: "valve-up.png")
        valveThree.image = UIImage(named: "valve-up.png")
    }
    
    func valves2() {
        
        valveOne.image = UIImage(named: "valve-up.png")
        valveTwo.image = UIImage(named: "valve-down.png")
        valveThree.image = UIImage(named: "valve-up.png")
    }

    func valves3() {
        
        valveOne.image = UIImage(named: "valve-up.png")
        valveTwo.image = UIImage(named: "valve-up.png")
        valveThree.image = UIImage(named: "valve-up.png")
    }
    
    func valves12() {
        
        valveOne.image = UIImage(named: "valve-down.png")
        valveTwo.image = UIImage(named: "valve-down.png")
        valveThree.image = UIImage(named: "valve-up.png")
    }
    
    func valves23() {
        
        valveOne.image = UIImage(named: "valve-up.png")
        valveTwo.image = UIImage(named: "valve-down.png")
        valveThree.image = UIImage(named: "valve-down.png")
    }
    
    func valves13() {
        
        valveOne.image = UIImage(named: "valve-down.png")
        valveTwo.image = UIImage(named: "valve-up.png")
        valveThree.image = UIImage(named: "valve-down.png")
    }
    
    func valves123() {
        
        valveOne.image = UIImage(named: "valve-down.png")
        valveTwo.image = UIImage(named: "valve-down.png")
        valveThree.image = UIImage(named: "valve-down.png")
    }
    
    func valvesOpen() {
        
        valveOne.image = UIImage(named: "valve-up.png")
        valveTwo.image = UIImage(named: "valve-up.png")
        valveThree.image = UIImage(named: "valve-up.png")
        
    }
    
    func valvesRed() {
        
        valveOne.image = UIImage(named: "valve-red.png")
        valveTwo.image = UIImage(named: "valve-red.png")
        valveThree.image = UIImage(named: "valve-red.png")
        
    }
    
}

