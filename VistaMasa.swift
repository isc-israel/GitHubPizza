//
//  VistaMasa.swift
//  Pizza
//
//  Created by Israel Rodriguez Ibarra on 05/02/16.
//  Copyright © 2016 Israel Rodriguez Ibarra. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController {

    var transTamMas : String = ""
    var seleccionMasa : String = ""
    
    @IBOutlet weak var pickerMasa: UIPickerView!
    
    var masa = ["Escoge una opcion:","Delgada","Crujiente","Gruesa"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masa.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return masa[row]
    }
    
    func alertaMasa() {
        let alertController = UIAlertController(title: "Selecciona no válida", message: "¡Escoge una opción!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! VistaQueso
        
        let cilindroMasa = pickerMasa.selectedRowInComponent(0)
        switch cilindroMasa {
        case 0:
            seleccionMasa = "Sin selección"
            print(transTamMas)
            print(seleccionMasa)
            alertaMasa()
        case 1:
            seleccionMasa = "Delgada"
            print(transTamMas)
            print(seleccionMasa)
        case 2:
            seleccionMasa = "Crujiente"
            print(transTamMas)
            print(seleccionMasa)
        case 3:
            seleccionMasa = "Gruesa"
            print(transTamMas)
            print(seleccionMasa)
        default:
            seleccionMasa = "Default"
            print(transTamMas)
            print(seleccionMasa)
        }
        
        sigVista.transTamMasQue = transTamMas
        sigVista.transMasQue = seleccionMasa
    }
    
    @IBAction func botonMasa(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
