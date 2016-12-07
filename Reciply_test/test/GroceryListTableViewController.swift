//
//  GroceryListTableViewController.swift
//  test
//
//  Created by Debleena Sengupta on 12/7/16.
//  Copyright © 2016 Ziwei Yin. All rights reserved.
//

import UIKit

class GroceryListTableViewController: UITableViewController {
    
    
    var groceryList =  [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSavedGroceries()
        // Do any additional setup after loading the view.
    }
    
    func saveGroceries() {
        UserDefaults.standard.set(groceryList, forKey: "groceryList")
    }
    
    func loadSavedGroceries() {
        if UserDefaults.standard.object(forKey: "groceryList") != nil {
            var gl = UserDefaults.standard.object(forKey: "groceryList") as! [String]
            for t in gl {
                groceryList.append(t)
            }
        }
        saveGroceries()
    }

    @IBAction func addGroceries(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Some Title", message: "Enter a text", preferredStyle: .alert)
        alert.addTextField { (textField) in textField.text = "Some default text"}
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            self.groceryList.insert((textField?.text)!, at:0)
            UserDefaults.standard.set(self.groceryList, forKey: "groceryList")
            self.tableView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { [weak alert] (_) in
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print (groceryList.count)
        return groceryList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print ("cells")
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoTableCell", for: indexPath) as! TodoTableViewCell
        let t = groceryList[indexPath.row]
        cell.titleLabel.text = t
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groceryList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            UserDefaults.standard.set(groceryList, forKey: "groceryList")
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
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
