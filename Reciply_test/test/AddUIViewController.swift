//
//  AddUIViewController.swift
//  test
//
//  Created by Ziwei Yin on 10/16/16.
//  Copyright © 2016 Ziwei Yin. All rights reserved.
//

import UIKit

class AddUIViewController: UIViewController {
    
    @IBOutlet weak var directionsTxT: UITextField!
    @IBOutlet weak var contentTxT: UITextField!
    @IBOutlet weak var titleTxT: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleTxT.placeholder = "Recipe Name"
        contentTxT.placeholder = "Ingredients"
        directionsTxT.placeholder = "Directions"
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "done" {
            let t = [titleTxT.text!, contentTxT.text!, directionsTxT.text!, "false"]
            let vc = segue.destination as! UINavigationController
            let tvc = vc.topViewController as! TodoUITableViewController
            var todos = UserDefaults.standard.object(forKey: "Todos") as! [[String]]
            todos.insert(t, at: 0)
            UserDefaults.standard.set(todos, forKey: "Todos")
            tvc.tableView.reloadData()
        }
        if segue.identifier == "cancel" {
        }
    }
}
