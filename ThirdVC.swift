//
//  ThirdVC.swift
//  BanqueMisr2024Intern1
//
//  Created by Daddy on 19/07/2024.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var notificationTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notificationBtn(_ sender: Any) {   
        
        //3.
        let dataDict: [String: String] = ["notification1": self.notificationTextField.text ?? ""]
        NotificationCenter.default.post(name: Notification.Name("ReceivngNotificationsChannel"), object: nil,userInfo: dataDict)
        self.dismiss(animated: true)
    }
}
