//
//  VistaIngredientes.swift
//  Pizza
//
//  Created by Israel Rodriguez Ibarra on 05/02/16.
//  Copyright © 2016 Israel Rodriguez Ibarra. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {

    var transTamMasQueIng : String = ""
    var transMasQueIng : String = ""
    var transQueIng: String = ""
    
    var activos : Int = 0
    
    var arreglo : [String] = []
    var ingredientes : [String] = []
    
    var flag1 : Bool = false
    var flag2 : Bool = false
    var flag3 : Bool = false
    var flag4 : Bool = false
    var flag5 : Bool = false
    var flag6 : Bool = false
    var flag7 : Bool = false
    var flag8 : Bool = false
    var flag9 : Bool = false
    var flag10 : Bool = false
    
    var ing1: String = ""
    var ing2: String = ""
    var ing3: String = ""
    var ing4: String = ""
    var ing5: String = ""
    var ing6: String = ""
    var ing7: String = ""
    var ing8: String = ""
    var ing9: String = ""
    var ing10: String = ""
    
    var ingrediente1 : String = "-"
    var ingrediente2 : String = "-"
    var ingrediente3 : String = "-"
    var ingrediente4 : String = "-"
    var ingrediente5 : String = "-"
    
    @IBOutlet weak var etiquetaIngredientes: UILabel!
    @IBOutlet weak var sw1: UISwitch!
    @IBOutlet weak var sw2: UISwitch!
    @IBOutlet weak var sw3: UISwitch!
    @IBOutlet weak var sw4: UISwitch!
    @IBOutlet weak var sw5: UISwitch!
    @IBOutlet weak var sw6: UISwitch!
    @IBOutlet weak var sw7: UISwitch!
    @IBOutlet weak var sw8: UISwitch!
    @IBOutlet weak var sw9: UISwitch!
    @IBOutlet weak var sw10: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sw1.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        sw2.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        sw3.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        sw4.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        sw5.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        sw6.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        sw7.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        sw8.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        sw9.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        sw10.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func Zero() {
        sw1.setOn(false, animated:true)
        sw2.setOn(false, animated:true)
        sw3.setOn(false, animated:true)
        sw4.setOn(false, animated:true)
        sw5.setOn(false, animated:true)
        sw6.setOn(false, animated:true)
        sw7.setOn(false, animated:true)
        sw8.setOn(false, animated:true)
        sw9.setOn(false, animated:true)
        sw10.setOn(false, animated:true)

        arreglo = []; ingredientes = []
        
        activos = 0
        
        flag1 = false; flag2 = false
        flag3 = false; flag4 = false
        flag5 = false; flag6 = false
        flag7 = false; flag8 = false
        flag9 = false; flag10 = false
        
        ing1 = ""; ing2 = ""; ing3 = ""
        ing4 = ""; ing5 = ""; ing6 = ""
        ing7 = ""; ing8 = ""; ing9 = ""
        ing10 = ""
        
        ingrediente1 = "-"; ingrediente2 = "-"
        ingrediente3 = "-"; ingrediente4 = "-"
        ingrediente5 = "-"

    }

    func stateChanged(switchState: UISwitch) {
        if switchState.on {
            ++activos
            switch activos {
            case 1...4:
                etiquetaIngredientes.text = "Escoge " + String(5 - (activos)) + " Ingredientes más"
                print(activos)
                controlActivos()
            case 5:
                etiquetaIngredientes.text = "5 Ingredientes seleccionados"
                alerta()
                print(activos)
                controlActivos()
            default:
                alerta()
                print(activos)
                controlActivos()
            }
            
        } else {
            --activos
            etiquetaIngredientes.text = "Escoge " + String(5 - (activos)) + " Ingredientes más"
            print(activos)
            controlActivos()
        }
    }
    
    func controlActivos() {
        if activos <= 5 {
            if sw1.on && flag1 == false {
                flag1 = true
                ing1 = "Ingrediente 1 activo"
                print(ing1)
                arreglo += ["sw1"]
                print(arreglo)
            } else if !sw1.on && flag1 == true {
                flag1 = false
                ing1 = "Ingrediente 1 desactivado"
                print(ing1)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
            if sw2.on && flag2 == false {
                flag2 = true
                ing2 = "Ingrediente 2 activo"
                print(ing2)
                arreglo += ["sw2"]
                print(arreglo)
            } else if !sw2.on && flag2 == true {
                flag2 = false
                ing2 = "Ingrediente 2 desactivado"
                print(ing2)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
            if sw3.on && flag3 == false {
                flag3 = true
                ing3 = "Ingrediente 3 activo"
                print(ing3)
                arreglo += ["sw3"]
                print(arreglo)
            } else if !sw3.on && flag3 == true {
                flag3 = false
                ing3 = "Ingrediente 3 desactivado"
                print(ing3)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
            if sw4.on && flag4 == false {
                flag4 = true
                ing4 = "Ingrediente 4 activo"
                print(ing4)
                arreglo += ["sw4"]
                print(arreglo)
            } else if !sw4.on && flag4 == true {
                flag4 = false
                ing4 = "Ingrediente 4 desactivado"
                print(ing4)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
            if sw5.on && flag5 == false {
                flag5 = true
                ing5 = "Ingrediente 5 activo"
                print(ing5)
                arreglo += ["sw5"]
                print(arreglo)
            } else if !sw5.on && flag5 == true {
                flag5 = false
                ing5 = "Ingrediente 5 desactivado"
                print(ing5)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
            if sw6.on && flag6 == false {
                flag6 = true
                ing6 = "Ingrediente 6 activo"
                print(ing6)
                arreglo += ["sw6"]
                print(arreglo)
            } else if !sw6.on && flag6 == true {
                flag6 = false
                ing6 = "Ingrediente 6 desactivado"
                print(ing6)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
            if sw7.on && flag7 == false {
                flag7 = true
                ing7 = "Ingrediente 7 activo"
                print(ing7)
                arreglo += ["sw7"]
                print(arreglo)
            } else if !sw7.on && flag7 == true {
                flag7 = false
                ing7 = "Ingrediente 7 desactivado"
                print(ing7)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
            if sw8.on && flag8 == false {
                flag8 = true
                ing8 = "Ingrediente 8 activo"
                print(ing8)
                arreglo += ["sw8"]
                print(arreglo)
            } else if !sw8.on && flag8 == true {
                flag8 = false
                ing8 = "Ingrediente 8 desactivado"
                print(ing8)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
            if sw9.on && flag9 == false {
                flag9 = true
                ing9 = "Ingrediente 9 activo"
                print(ing9)
                arreglo += ["sw9"]
                print(arreglo)
            } else if !sw9.on && flag9 == true {
                flag9 = false
                ing9 = "Ingrediente 9 desactivado"
                print(ing9)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
            if sw10.on && flag10 == false {
                flag10 = true
                ing10 = "Ingrediente 10 activo"
                print(ing10)
                arreglo += ["sw10"]
                print(arreglo)
            } else if !sw10.on && flag10 == true {
                flag10 = false
                ing10 = "Ingrediente 10 desactivado"
                print(ing10)
                let temp = arreglo.removeLast()
                temp
                print(arreglo)
            }
        }
        if activos == 6 {
            --activos
            if sw1.on && flag1 == false {
                sw1.setOn(false, animated:true)
            }
            if sw2.on && flag2 == false {
                sw2.setOn(false, animated:true)
            }
            if sw3.on && flag3 == false {
                sw3.setOn(false, animated:true)
            }
            if sw4.on && flag4 == false {
                sw4.setOn(false, animated:true)
            }
            if sw5.on && flag5 == false {
                sw5.setOn(false, animated:true)
            }
            if sw6.on && flag6 == false {
                sw6.setOn(false, animated:true)
            }
            if sw7.on && flag7 == false {
                sw7.setOn(false, animated:true)
            }
            if sw8.on && flag8 == false {
                sw8.setOn(false, animated:true)
            }
            if sw9.on && flag9 == false {
                sw9.setOn(false, animated:true)
            }
            if sw10.on && flag10 == false {
                sw10.setOn(false, animated:true)
            }
        }
        
    }
    
    func alerta() {
        let alertController = UIAlertController(title: "5 Ingredientes Seleccionados", message: "Confirma tu orden!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func alertaSinSeleccion() {
        let alertController = UIAlertController(title: "Sin selección", message: "Selecciona al menos un ingrediente!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    override func viewDidAppear(animated: Bool) {
        Zero()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func ordenIngredientes() {
        
        var pos : Int = 0
        var cantidad : Int = 0

        arreglo.sortInPlace()
        cantidad = arreglo.count
        print(arreglo)
        
        while pos < cantidad
        {
            if arreglo[pos] == "sw1" {
                ingredientes += ["Jamón"]
            }
            if arreglo[pos] == "sw2" {
                ingredientes += ["Pepperoni"]
            }
            if arreglo[pos] == "sw3" {
                ingredientes += ["Pavo"]
            }
            if arreglo[pos] == "sw4" {
                ingredientes += ["Salchicha"]
            }
            if arreglo[pos] == "sw5" {
                ingredientes += ["Aceituna"]
            }
            if arreglo[pos] == "sw6" {
                ingredientes += ["Cebolla"]
            }
            if arreglo[pos] == "sw7" {
                ingredientes += ["Pimiento"]
            }
            if arreglo[pos] == "sw8" {
                ingredientes += ["Piña"]
            }
            if arreglo[pos] == "sw9" {
                ingredientes += ["Anchoa"]
            }
            if arreglo[pos] == "sw10" {
                ingredientes += ["Champiñones"]
            }
            ++pos
        }
        
        var cont : Int = 0
        cont = ingredientes.count
        
        if cont == 1 {
            ingrediente1 = ingredientes[0]
        }
        if cont == 2 {
            ingrediente1 = ingredientes[0]
            ingrediente2 = ingredientes[1]
        }
        if cont == 3 {
            ingrediente1 = ingredientes[0]
            ingrediente2 = ingredientes[1]
            ingrediente3 = ingredientes[2]
        }
        if cont == 4 {
            ingrediente1 = ingredientes[0]
            ingrediente2 = ingredientes[1]
            ingrediente3 = ingredientes[2]
            ingrediente4 = ingredientes[3]
        }
        if cont == 5 {
            ingrediente1 = ingredientes[0]
            ingrediente2 = ingredientes[1]
            ingrediente3 = ingredientes[2]
            ingrediente4 = ingredientes[3]
            ingrediente5 = ingredientes[4]
        }
        

    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! VistaConfirmacion
        
        if activos == 0 {
            alertaSinSeleccion()
        }

        
        ordenIngredientes()
        
        sigVista.transTamMasQueIngCon = transTamMasQueIng
        sigVista.transMasQueIngCon = transMasQueIng
        sigVista.transQueIngCon = transQueIng
        sigVista.transIng1Con = ingrediente1
        sigVista.transIng2Con = ingrediente2
        sigVista.transIng3Con = ingrediente3
        sigVista.transIng4Con = ingrediente4
        sigVista.transIng5Con = ingrediente5
    }

    
    @IBAction func botonIngredientes(sender: AnyObject) {
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
