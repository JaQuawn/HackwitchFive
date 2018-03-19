//
//  ViewController.swift
//  HackwitchFive
//
//  Created by CM Student on 2/26/18.
//  Copyright © 2018 jaquawn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var carArray = [ " honda", "ferrari", " lamborghnini", "bently"]
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]

        
        //self. tableVeiw. datasource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let Text = carArray[indexPath.row]
        cell.textLabel?.text = Text
        return cell
        func tableView(_ tableView: UITableView, didSelectRowAt indexpath: IndexPath) {
            tableView.deselectRow(at: indexPath as IndexPath ,animated: true)
        }
    }
    
    
}


