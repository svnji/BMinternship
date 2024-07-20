//
//  ViewController.swift
//  BanqueMisr2024Intern1
//
//  Created by Daddy on 19/07/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var welcomingLable: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    //First time screen to load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBtnTatted(_ sender: Any) {
        let name = self.nameTextField.text ?? ""
        self.welcomingLable.text = "HELLo \(name)!"
        
    }
    
}

