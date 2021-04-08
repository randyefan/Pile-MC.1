//
//  HomeViewController.swift
//  Pile
//
//  Created by Gratianus Martin on 05/04/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var worldLevelText: UILabel!
    @IBOutlet weak var userNameText: UILabel!
    @IBOutlet weak var totalEpText: UILabel!
    @IBOutlet weak var addTaskButton: UIButton!
    @IBOutlet weak var taskListTableView: UITableView!
    @IBOutlet weak var totalEpProgressView: UIProgressView!
    
    let challenges = CoreDataManager.shared.fetchChallengeStatusToday()
    var tableRowHeight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fetchChallenge = CoreDataManager.shared.fetchChallengeStatusToday()
        //fetchUserData()
        isChallengeExist()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        fetchUserData()
    }
    
    func fetchUserData(){
        let user = CoreDataManager.shared.fetchUser()!
        //userNameText.text = user.name
        //worldLevelText.text = "\(user.points/100)"
        //totalEpText.text = "\(user.points%100)/100"
        //totalEpProgressView.progress = Float(user.points%100/100)
    }
    
    func isChallengeExist(){
        if challenges == nil{
            addTaskButton.isHidden = true
        }
    }
    
    
    
    @IBAction func addTaskAction(_ sender: Any) {
        let addChallengeModal = ChallengeDetailViewController()
        
        self.present(addChallengeModal, animated: true, completion: nil)
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if challenges == nil{
            return 0
        }else{
            return challenges!.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "challengeTitleCell", for: indexPath) as! TaskTableViewCell
        
        cell.challengeTitleText.text = challenges?[indexPath.row].challenges.nama
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(tableRowHeight)
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
