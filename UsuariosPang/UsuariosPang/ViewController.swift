//
//  ViewController.swift
//  UsuariosPang
//
//  Created by Ernesto Pang on 10/13/18.
//  Copyright © 2018 Ernesto Pang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //var listOfUsers = [Usuarios]()
    
    

    
    @IBOutlet weak var user: UITextField!
    var lista = [Usuarios]()
    var listuki = [String]()
    var listukiDeClaves = [String]()
    @IBOutlet weak var clave: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let defaults = UserDefaults.standard
        //lista.append(Usuarios(nameOfUsuario: "perro", password: "123", estado: false))
        //let oso = lista
        //defaults.setValue(oso, forKey: "lista")
        //defaults.set(oso, forKey: "lista")
        
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        listuki = defaults.object(forKey: "Listuki") as? [String] ?? [String]()
        listukiDeClaves = defaults.object(forKey: "listukyDeClaves") as? [String] ?? [String]()
        print(listukiDeClaves)
        print(listuki)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindView (segue: UIStoryboardSegue){
    }
    
    override func viewWillAppear(_ animated: Bool) {
        user.text = ""
        clave.text = ""
        
    }
    
    @IBAction func SignIn(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        if let dato = defaults.object(forKey: "Lista") as? [Usuarios]{
            var i = 0
            for x in dato{
                
                if x.nameOfUsuario == user.text && x.password == clave.text{
                    defaults.set(dato[i], forKey: "UserOn")
                    performSegue(withIdentifier: "SignIn", sender: nil)
                    
                }
                i += 1
            }
        }else{
            //label.text = "No estas registrado"
            //print("No estas registrado")
        }
    }
    
    
    //@IBOutlet weak var label: UILabel!
}
