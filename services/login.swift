//
//  login.swift
//  services
//
//  Created by Xavier Morales on 07/05/21.
//

import UIKit


class login: UIViewController {

    @IBOutlet weak var user: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view.
    }
    

    @IBAction func auth(_ sender: Any) {
        
        let us = user.text
        let pass = password.text
        print("el usuario es:\(us), y la contraseña es \(pass)")
        let userData = loginStruct(username: us!, password: pass!)
        NetworkingProvider.shared.login(user: userData)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
