//
//  ViewController.swift
//  Pizza
//
//  Created by Israel Rodriguez Ibarra on 05/02/16.
//  Copyright © 2016 Israel Rodriguez Ibarra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var seleccionTamaño : String = ""

    @IBOutlet weak var pickerTamaño: UIPickerView!
    
    // We must provide the Picker View with values.
    var tamaño = ["Escoge una opcion:","Chica","Mediana","Grande"]
    
    // The UIViewDataSource protocol requires delegate methods to define the number of components and rows of a picker.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamaño.count
    }
    
    // We define one component with the number of rows equal to the number of array items. Next, we assign the data in out array to the corresponding row.
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return tamaño[row]
    }
   
    func alertaTamaño() {
        let alertController = UIAlertController(title: "Selecciona no válida", message: "¡Escoge una opción!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! VistaMasa
        
        let cilindroTamaño = pickerTamaño.selectedRowInComponent(0)
        switch cilindroTamaño {
        case 0:
            seleccionTamaño = "Sin selección"
            print(seleccionTamaño)
            alertaTamaño()
        case 1:
            seleccionTamaño = "Chica"
            print(seleccionTamaño)
        case 2:
            seleccionTamaño = "Mediana"
            print(seleccionTamaño)
        case 3:
            seleccionTamaño = "Grande"
            print(seleccionTamaño)
        default:
            seleccionTamaño = "Default"
            print(seleccionTamaño)
        }
        
        sigVista.transTamMas = seleccionTamaño
    }

    @IBAction func botonTamaño(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

