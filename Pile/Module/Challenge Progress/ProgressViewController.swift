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
        
        //Table
        showProgressChallenge()
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
    
    //MARK: - Private Function
    // To Count Progress Bar
    private func countProgressBar(challenge: ProgressChallenge) -> CGFloat {
        var totalCompleted: Double = 0.0
        for i in challenge.status {
            if i.isCompleted {
                totalCompleted += 1
            }
        }
        
        let count = totalCompleted / 30.0
        return CGFloat(count)
    }
}
