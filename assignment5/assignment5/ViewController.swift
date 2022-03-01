//
//  ViewController.swift
//  assignment5
//
//  Created by wangzf on 2/28/22.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var txtStockName: UITextField!
    
    @IBOutlet weak var lblStockPrice: UILabel!
    @IBAction func getPrice(_ sender: Any) {
        let stockName = txtStockName.text!
        
        let url = "\(shortQuoteUrl)\(stockName)?apikey=\(key)"
        
        AF.request(url).responseJSON { response in
            if response.error != nil{
                print(response.error)
                return
            }
            
            let stocks = JSON(response.data!).array
            
            guard let stock = stocks!.first else {return;}
            
            let sName = stock["symbol"].stringValue
            let price = stock["price"].floatValue
            self.lblStockPrice.text = "\(sName) : $\(price)"
            
            
            
        }
     
    }
}

