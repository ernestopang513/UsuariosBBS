//
//  SignUpViewController.swift
//  UsuariosPang
//
//  Created by Ernesto Pang on 10/13/18.
//  Copyright © 2018 Ernesto Pang. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //var lista = [Usuarios]()
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var nameOfUser: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let defaults = UserDefaults.standard
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        if let name = nameOfUser.text, let clave = password.text, let clave2 = confirmPassword.text {
            
            if clave == clave2{
                if  var dato = defaults.object(forKey: "Lista") as? [Usuarios]{
                    //listOfUsers = dato
                    //listOfUsers
                    dato.append(Usuarios(nameOfUsuario: name, password: clave,  estado: false))
                    defaults.set(dato, forKey: "Lista")
                    
            
                }else{
                    //var listOfUsers = [Usuarios]()
                    //listOfUsers.append(Usuarios(nameOfUsuario: name, password: clave, estado: false))
                    //user.text = "\(listOfUsers[0].nameOfUsuario)"
                    //defaults.set( listOfUsers, forKey: "Lista")
                    var listuki = [String]()
                    var listukyDeClaves = [String]()
                    listuki.append(nameOfUser.text!)
                    listukyDeClaves.append("\(name)-\(clave)")
                    defaults.set(listuki, forKey: "Listuki")
                    defaults.set(listukyDeClaves, forKey: "listukyDeClaves")
                    
                    
                    
                }
            }else {
                
                nameOfUser.text = "no clave"
                
            }
            
        }
        }
    
    @IBOutlet weak var user: UILabel!
    
    @IBOutlet weak var clave: UILabel!
    
}
