//
//  VistaQueso.swift
//  Pizza
//
//  Created by Israel Rodriguez Ibarra on 05/02/16.
//  Copyright © 2016 Israel Rodriguez Ibarra. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController {
    
    var transTamMasQue : String = ""
    var transMasQue : String = ""
    var seleccionQueso : String = ""
    
    @IBOutlet weak var pickerQueso: UIPickerView!
    
    var queso = ["Escoge una opcion:","Mozarela","Cheddar","Parmesano","Sin Queso"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return queso.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return queso[row]
    }

    func alertaQueso() {
        let alertController = UIAlertController(title: "Selecciona no válida", message: "¡Escoge una opción!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! VistaIngredientes
        
        let cilindroQueso = pickerQueso.selectedRowInComponent(0)
        switch cilindroQueso {
        case 0:
            seleccionQueso = "Sin selección"
            print(transTamMasQue)
            print(transMasQue)
            print(seleccionQueso)
            alertaQueso()
        case 1:
            seleccionQueso = "Mozarela"
            print(transTamMasQue)
            print(transMasQue)
            print(seleccionQueso)
        case 2:
            seleccionQueso = "Cheddar"
            print(transTamMasQue)
            print(transMasQue)
            print(seleccionQueso)
        case 3:
            seleccionQueso = "Parmesano"
            print(transTamMasQue)
            print(transMasQue)
            print(seleccionQueso)
        case 4:
            seleccionQueso = "Sin queso"
            print(transTamMasQue)
            print(transMasQue)
            print(seleccionQueso)
        default:
            seleccionQueso = "Default"
            print(transTamMasQue)
            print(transMasQue)
            print(seleccionQueso)
        }
        
        sigVista.transTamMasQueIng = transTamMasQue
        sigVista.transMasQueIng = transMasQue
        sigVista.transQueIng = seleccionQueso
        
    }
    
    @IBAction func botonQueso(sender: AnyObject) {
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
