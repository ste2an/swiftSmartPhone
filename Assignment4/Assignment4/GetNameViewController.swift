//
//  GetNameViewController.swift
//  Assignment4
//
//  Created by wangzf on 2/21/22.
//

import UIKit

protocol sendFirstAndLastNameDelegate {
    func sendNamse(firstName : String, lastName : String)
}

class GetNameViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    
    var sendNamesDelegate : sendFirstAndLastNameDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveName(_ sender: Any) {
        
        guard let first = txtFirstName.text else {return}
        guard let last = txtLastName.text else {return}
        
        sendNamesDelegate?.sendNamse(firstName: first, lastName: last)
        
        self.navigationController?.popViewController(animated: true)
        // when click the button, pop the viewController
    }
    
}
