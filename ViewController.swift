//
//  ViewController.swift
//  fulltableview
//
//  Created by bmiit on 04/03/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet var tblview: UITableView!
    
    var product = ["apple","orange","manfo"];
    
    @IBOutlet var gettxt: UITextField!
    
    

    @IBOutlet var addbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblview.dataSource = self;
        tblview.delegate = self;
    }

    @IBAction func addbtn1(_ sender: Any) {
        var gettext = gettxt.text
        
        product.append(gettext!)
        tblview.reloadData();
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblview.dequeueReusableCell(withIdentifier: "yash", for: indexPath)
        cell.textLabel?.text = String(product[indexPath.row])
        return cell
    }
    
}

