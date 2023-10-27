//
//  PersonsInfoViewController.swift
//  TableInfoApp
//
//  Created by Roman on 26.10.23.
//

import UIKit

final class PersonsInfoViewController: UITableViewController {

    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return "\(person.name) \(person.surname)"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellSecond", for: indexPath)
        let person = persons[indexPath.section]

        if indexPath.row == 0 {
            var content = cell.defaultContentConfiguration()
            content.text = "\(person.mail)"
            cell.contentConfiguration = content
        } else {
            var content = cell.defaultContentConfiguration()
            content.text = "\(person.number)"
            cell.contentConfiguration = content
        }

        return cell
    }
}
