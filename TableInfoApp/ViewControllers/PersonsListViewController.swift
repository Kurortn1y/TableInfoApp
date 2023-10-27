//
//  PersonsListViewController.swift
//  TableInfoApp
//
//  Created by Roman on 26.10.23.
//

import UIKit

final class PersonsListViewController: UITableViewController {

    var persons: [Person]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        detailsVC.perzon = persons[indexPath.row]
}
    
}


// MARK: - Table view data source
extension PersonsListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFirst", for: indexPath)
        let personInfo = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(personInfo.name) \(personInfo.surname)"
        
        cell.contentConfiguration = content
        
        return cell
        
    }
}
