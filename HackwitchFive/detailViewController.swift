//
//  detailViewController.swift
//  HackwitchFive
//
//  Created by CM Student on 3/19/18.
//  Copyright © 2018 jaquawn. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    
    @IBOutlet weak var imageVeiw: UIImageView!
    var imagePass: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
