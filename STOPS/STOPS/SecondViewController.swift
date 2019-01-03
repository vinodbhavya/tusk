//
//  SecondViewController.swift
//  STOPS
//
//  Created by vinod on 29/11/2018.
//  Copyright © 2018 bhavya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var stop : Stop?
    
    @IBOutlet weak var detailsLabel: UILabel!
   
    @IBOutlet weak var idlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        if let s = stop{
            
            //print("id: \(s.id)")
            //idLabel.text = s.id
            //codeLabel.text = s.code
            //print(s)
            detailsLabel.text = s.name
            idlabel.text = s.id
        }
        else {
            print("No data")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let s = stop {
            detailsLabel.text = s.code
        }
        
    }
    
}
