//
//  ViewController.swift
//  Assignment4
//
//  Created by wangzf on 2/21/22.
//

import UIKit

class ViewController: UIViewController, sendFirstAndLastNameDelegate {

    @IBOutlet weak var lblFirstName: UILabel!
    
    @IBOutlet weak var lblLastName: UILabel!
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getName(_ sender: Any) {
        performSegue(withIdentifier: "segueGetName", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueGetName" {
            let secondVC = segue.destination as! GetNameViewController
            secondVC.sendNamesDelegate = self
            
        }
    }
    
    func sendNamse(firstName: String, lastName: String) {
        lblFirstName.text = firstName
        lblLastName.text = lastName
        
        lblWelcome.text =  "welcome! \(firstName) \(lastName)"
    }
    
    
}

