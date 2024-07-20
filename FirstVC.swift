//
//  FirstVC.swift
//  BanqueMisr2024Intern1
//
//  Created by Daddy on 19/07/2024.
//

import UIKit

class FirstVC: UIViewController {

    
    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1
        NotificationCenter.default.addObserver(self, selector: #selector(didREceiveNotification(_:)), name: Notification.Name("ReceivngNotificationsChannel"), object: nil)
    }
    
    //2.
    @objc func didREceiveNotification(_ notification: Notification){
        //4.
        guard let dic = notification.userInfo as? [String: String], let message = dic["notification1"] else {return}
        self.messageLable.text = message
    }
    @IBAction func goToSecondScreenBtn(_ sender: Any) {
        
        let name = self.nameTextField.text ?? ""
        
        let sb =  UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        
        secondVC.welcomingName = name
        //4
        //secondVC.delegate = self
        
        self.present(secondVC, animated: true)
    }
    
}

//5
//extension FirstVC: messageDelegation {
//    func sendMessage(message: String) {
//        self.messageLable.text = message
//    }
//}
