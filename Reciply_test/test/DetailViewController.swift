//
//  DetailViewController.swift
//  test
//
//  Created by Debleena Sengupta on 12/6/16.
//  Copyright © 2016 Ziwei Yin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var groceryButton: UIButton!
    @IBOutlet weak var directions: UITextField!
    @IBOutlet weak var recipeName: UITextField!
    @IBOutlet weak var ingrdientsName: UITextField!
    var index: NSIndexPath = NSIndexPath()
    var storedData: [String] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeName.isUserInteractionEnabled = true
        ingrdientsName.isUserInteractionEnabled = true
        directions.isUserInteractionEnabled = true
        recipeName.text = storedData[0]
        ingrdientsName.text = storedData[1]
        directions.text = storedData[2]
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     // MARK: - Navigation
    @IBAction func addToGroceryList(_ sender: AnyObject) {
        groceryButton.setTitle("ADDED", for: .normal)
        let t = ingrdientsName.text!.components(separatedBy: ",")
        var groceries = UserDefaults.standard.object(forKey: "groceryList") as! [String]
        groceries = groceries + t
        print (t)
        print (groceries)
        UserDefaults.standard.set(groceries, forKey: "groceryList")
        var tmp = UserDefaults.standard.object(forKey: "groceryList") as! [String]
        print ("tmp count")
        print(tmp.count)
        
    }
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "done" {
            let t = [recipeName.text!, ingrdientsName.text!, directions.text!, "false"]
            let vc = segue.destination as! UINavigationController
            let tvc = vc.topViewController as! TodoUITableViewController
            var todos = UserDefaults.standard.object(forKey: "Todos") as! [[String]]
            todos[index.row] = t
            var tmp = todos[index.row]
            var i = 1
            var prev = todos[0]
            var curr = todos[0]
            todos[0] = t
            while i <= index.row{
                curr = todos[i]
                todos[i] = prev
                prev = curr
                i = i + 1
            }
            
            //todos.remove(at: .indexPath.row)
            //tableView.deleteRows(at: [indexPath], with: .fade)
            UserDefaults.standard.set(todos, forKey: "Todos")
            tvc.tableView.reloadData()
        }
     }
    
}
