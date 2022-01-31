//
//  ViewController.swift
//  CustomTableView
//
//  Created by wangzf on 1/28/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let imgs = ["beef", "chicken wings","crayfish","curry","french fries","hotpot","lamb","noddle","spaghetti", "sushi"]
    
    let imageNames = ["beef", "chicken wings","crayfish","curry","french fries","hotpot","lamb","noddle","spaghetti", "sushi"]
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
        cell.imgViewCell.image = UIImage(named: imgs[indexPath.row])
        cell.lblCell?.text = imageNames[indexPath.row]
        return cell
    }
    

}

