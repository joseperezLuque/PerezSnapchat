//
//  ViewController.swift
//  PerezSnapchat
//
//  Created by Jose Adriano Perez Luque on 22/05/24.
//

import UIKit
import Firebase
import FirebaseAuth

class IniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
        
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {(user, error) in print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el siguiente error: \(error)")
            }else {
                print("Inicio de sesion exitoso")
            }
        }
    }
    
   
    

}

