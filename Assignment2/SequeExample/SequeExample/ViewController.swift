//
//  ViewController.swift
//  SequeExample
//
//  Created by wangzf on 2/6/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var TextFirst: UITextField!
    
    @IBAction func goToSecondVC(_ sender: Any) {
        performSegue(withIdentifier:"segueTOSecondVC" , sender: self)
    }
    @IBOutlet weak var TextLast: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueTOSecondVC" {
            let secondVC = segue.destination as! SecondViewController;
            secondVC.welcome = "welcome \(TextFirst.text!), \(TextLast.text!)"
        }
        
        
        
    }
}

