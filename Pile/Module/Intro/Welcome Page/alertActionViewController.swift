//
//  alertActionViewController.swift
//  Pile
//
//  Created by Dheo Gildas Varian on 05/04/21.
//

import UIKit

class alertActionViewController: UIViewController {
    
    
    @IBOutlet weak var showAlertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showAlertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
    }
    
    
    @objc func showAlert(){
        let alert = UIAlertController(title: "Let's Start", message: "We would like to know how to call you! \n Enter your name below", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: nil)
        alert.textFields![0].placeholder = "Your Name"
        
        alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { (_) in
            print(alert.textFields![0].text!)
            let saveUser = CoreDataManager.shared.saveUser(name: alert.textFields![0].text!)
            self.dismiss(animated: true, completion: nil)
        }))
        
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}
