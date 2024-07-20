//
//  SecondVC.swift
//  BanqueMisr2024Intern1
//
//  Created by Daddy on 19/07/2024.
//

import UIKit

//1
protocol messageDelegation: AnyObject {
    func sendMessage(message: String)
}

class SecondVC: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var welcomingLable: UILabel!
   
    //2
    weak var delegate: messageDelegation!
    var welcomingName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.welcomingLable.text = welcomingName
    }
    
    @IBAction func goBackBtn(_ sender: UIButton) {
       //3
        //delegate?.sendMessage(message: self.messageTextField.text ?? "")
        
        self.dismiss(animated: true)
        
    }
    @IBAction func goTothirdScreenBtn(_ sender: UIButton) {
        let sb =  UIStoryboard(name: "Main", bundle: nil)
        let thirdVC  = sb.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdVC
        self.present(thirdVC, animated: true)
        
    }
}
