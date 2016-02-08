//
//  VistaConfirmacion.swift
//  Pizza
//
//  Created by Israel Rodriguez Ibarra on 06/02/16.
//  Copyright © 2016 Israel Rodriguez Ibarra. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {
    
    var transTamMasQueIngCon : String = ""
    var transMasQueIngCon : String = ""
    var transQueIngCon : String = ""
    var transIng1Con : String = ""
    var transIng2Con : String = ""
    var transIng3Con : String = ""
    var transIng4Con : String = ""
    var transIng5Con : String = ""


    @IBOutlet weak var etiquetaTamañoConfirmacion: UITextField!
    @IBOutlet weak var etiquetaMasaConfirmacion: UITextField!
    @IBOutlet weak var etiquetaQuesoConfirmacion: UITextField!
    
    @IBOutlet weak var etiquetaIngrediente1: UITextField!
    @IBOutlet weak var etiquetaIngrediente2: UITextField!
    @IBOutlet weak var etiquetaIngrediente3: UITextField!
    @IBOutlet weak var etiquetaIngrediente4: UITextField!
    @IBOutlet weak var etiquetaIngrediente5: UITextField!
    
    
    
    override func viewWillAppear(animated: Bool) {
        etiquetaTamañoConfirmacion.text = transTamMasQueIngCon
        etiquetaMasaConfirmacion.text = transMasQueIngCon
        etiquetaQuesoConfirmacion.text = transQueIngCon
        etiquetaIngrediente1.text = transIng1Con
        etiquetaIngrediente2.text = transIng2Con
        etiquetaIngrediente3.text = transIng3Con
        etiquetaIngrediente4.text = transIng4Con
        etiquetaIngrediente5.text = transIng5Con
        }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func botonModificar(sender: AnyObject) {
    }
    
    @IBAction func botonPreparar(sender: AnyObject) {
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
