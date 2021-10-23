//
//  ShoppingViewController.swift
//  UdemySection6-ComprasUSA-APP
//
//  Created by William Moraes da Silva on 21/10/21.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
     
    @IBOutlet weak var lbRealDescription: UILabel!
    
    @IBOutlet weak var lbReal: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        setAmmount()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
     }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        setAmmount()
        tfDolar.resignFirstResponder()
        
    }
    func setAmmount (){
        tc.dolar = tc.convertToDouble(tfDolar.text!)
    }
 
}
