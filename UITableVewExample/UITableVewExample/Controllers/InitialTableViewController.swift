//
//  InitialTableViewController.swift
//  UITableVewExample
//
//  Created by Sueda Beyza Özcan on 15.08.2024.
//

import UIKit
var tableViewData = [
    ["General","Accessibility", "Privacy"],
    ["Passwords"],
    ["Safari", "News"],
    ["Deveoper"]
]
class InitialTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return tableViewData.count   }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableViewData[section].count    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tableViewData[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "UYARI", message: tableViewData[indexPath.section][indexPath.row], preferredStyle: .alert)
        // alerte button (action) ekleme
        alertController.addAction(UIAlertAction(title: "tamam", style: UIAlertAction.Style.default, handler: { _ in alertController.dismiss(animated: true)
        }))
        //seçieln satırı silme
        alertController.addAction(UIAlertAction(title: "sil", style: .destructive, handler: { _ in tableViewData[indexPath.section].remove(at: indexPath.row)
            tableView.reloadData() // sayfa yeniliyor
        }))
        
        present(alertController, animated: true)//alerti göstermemizi sağlar
    }
    
    
}
