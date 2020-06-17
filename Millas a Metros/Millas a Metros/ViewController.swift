//
//  ViewController.swift
//  Millas a Metros
//
//  Created by Estanislao Terragno on 27/05/2020.
//  Copyright © 2020 Estanislao Terragno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var distanceTextField: UITextField!
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    @IBOutlet var resultLabel: UILabel!
    
    let mileUnit = 1.609
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = "Escribe la distancia a convertir."
    }

    @IBAction func convertPressed(_ sender: UIButton) {
        
        let selectedIndex = segmentedControl.selectedSegmentIndex
        
        if let textFieldStr = distanceTextField.text, let textFieldVal = Double(textFieldStr) {
        
        if selectedIndex == 0 {
            let convertedValue = textFieldVal / mileUnit
            let initValue = String(format: "%.2f", textFieldVal)
            let endValue = String(format: "%.2f", convertedValue)
            resultLabel.text = "\(initValue) km = \(endValue) millas."
            print("Debo Convertir a Millas \(convertedValue)")
            
        } else if selectedIndex == 1 {
            let convertedValue = textFieldVal * mileUnit
            let initValue = String(format: "%.2f", textFieldVal)
            let endValue = String(format: "%.2f", convertedValue)
            resultLabel.text = "\(initValue) millas = \(endValue) km."
            print("Debo Convertir a Kilómetros \(convertedValue)")
        } else {
            print("Ningun caso debe estar aquí")
            
            }
            } else {
            let alertController : UIAlertController = UIAlertController (title: "¡Ups!", message: "Debes introducir un valor numérico para convertir.", preferredStyle: .alert)
            
            let okAction : UIAlertAction = UIAlertAction(title: "¡Entendido!", style: .default, handler: nil)
            
            alertController.addAction(okAction)
            
            present(alertController, animated: true, completion: nil)
            }
        }
}
