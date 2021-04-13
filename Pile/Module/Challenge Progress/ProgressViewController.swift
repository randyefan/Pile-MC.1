//
//  ProgressViewController.swift
//  Pile
//
//  Created by Dheo Gildas Varian on 07/04/21.
//

import UIKit

class ProgressViewController: UIViewController, UITabBarDelegate, UITableViewDataSource, UITableViewDelegate {

    var progressChallenge = [ProgressChallenge]()
    
    @IBOutlet weak var ProgressChallengeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Title
        title = "Your Progress"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showProgressChallenge()
        ProgressChallengeTableView.reloadData()
    }
    
    func setupTableView() {
        ProgressChallengeTableView.dataSource = self
        ProgressChallengeTableView.delegate = self
    }
    
    func showProgressChallenge(){
        guard let dataProgressChallenge = CoreDataManager.shared.fetchAllChallengeToProgress() else {
            return
        }
        
        self.progressChallenge = dataProgressChallenge
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        progressChallenge.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ProgressChallengeTableView.dequeueReusableCell(withIdentifier: "progressCellIdentifier", for: indexPath) as! ProgressTableViewCell
        cell.progChallenge = progressChallenge[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "ChallengeProgress", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(identifier: "progressDetail") as? ProgressDetailViewController {
            detailVC.progressChallenge = progressChallenge[indexPath.row]
            self.navigationController?.pushViewController(detailVC, animated: true)
        }
    }
}
