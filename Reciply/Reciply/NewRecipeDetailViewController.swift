//
//  NewRecipeDetailViewController.swift
//  Reciply
//
//  Created by Hope Ludwinski on 12/5/16.
//  Copyright © 2016 Hope Ludwinski. All rights reserved.
//

import UIKit

class NewRecipeDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToViewController(sender: UIStoryboardSegue)
    {
        let sourceViewController = sender.source
        // Pull any data from the view controller which initiated the unwind segue.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
//    }
 
}
