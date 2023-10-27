//
//  MainViewController.swift
//  TableInfoApp
//
//  Created by Roman on 26.10.23.
//

import UIKit

final class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        let persons = Person.getPersons()
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                let firstVC = navigationVC.topViewController
                if let firstVC = firstVC as? PersonsListViewController {
                    firstVC.persons = persons
                }
            }
            if let secondNav = $0 as? UINavigationController {
                let secondVC = secondNav.topViewController
                if let secondVC = secondVC as? PersonsInfoViewController {
                    secondVC.persons = persons
                }
            }
        }
        
    }
    
}
