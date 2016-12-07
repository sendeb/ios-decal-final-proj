//
//  DetailViewController.swift
//  test
//
//  Created by Debleena Sengupta on 12/6/16.
//  Copyright © 2016 Ziwei Yin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var recipeName: UITextField!
    @IBOutlet weak var ingrdientsName: UITextField!
    var storedData: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeName.isUserInteractionEnabled = false
        ingrdientsName.isUserInteractionEnabled = false
        recipeName.text = storedData[0]
        ingrdientsName.text = storedData[1]
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
