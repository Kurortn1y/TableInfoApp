//
//  DetailsViewController.swift
//  TableInfoApp
//
//  Created by Roman on 27.10.23.
//

import UIKit

final class DetailsViewController: UITableViewController {
    
    var perzon: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cellthird", for: indexPath)
        if indexPath.row == 0 {
            var content = cell.defaultContentConfiguration()
            content.text = perzon.mail
            cell.contentConfiguration = content
        } else {
           if indexPath.row == 1 {
               var content = cell.defaultContentConfiguration()
               content.text = perzon.name
               cell.contentConfiguration = content
            }
        }
        
        
        return cell
    }
    
}


