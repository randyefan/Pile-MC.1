//
//  HomeViewController.swift
//  Pile
//
//  Created by Gratianus Martin on 05/04/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var worldLevelText: UILabel!
    @IBOutlet weak var userNameText: UILabel!
    @IBOutlet weak var totalEpText: UILabel!
    @IBOutlet weak var addTaskButton: UIButton!
    @IBOutlet weak var taskListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTaskAction(_ sender: Any) {
    }
    
    @IBAction func smallAddTaskAction(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
