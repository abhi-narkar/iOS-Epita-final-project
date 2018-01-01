//
//  ViewController.swift
//  Mumbai Food
//
//  Created by ABHISHEK NARKAR on 1/1/18.
//  Copyright © 2018 ABHISHEK NARKAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var foodLabel: UILabel!
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodDesc: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodLabel.text = food[myIndex]
        foodDesc.text = foodDetails[myIndex]
        foodImage.image = UIImage(named: food[myIndex] + ".jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

