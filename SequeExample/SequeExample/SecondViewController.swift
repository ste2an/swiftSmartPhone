//
//  SecondViewController.swift
//  SequeExample
//
//  Created by wangzf on 2/6/22.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var lblText: UILabel!
    var welcome = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.text = welcome;
        // Do any additional setup after loading the view.
    }

    @IBAction func popBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
