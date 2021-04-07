//
//  ChallengeTableViewController.swift
//  Pile
//
//  Created by Darindra R on 05/04/21.
//

import UIKit

class ChallengeTableViewController: UITableViewController {
    var challenges = Challenges()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Challenges"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Challenge")
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return challenges.data.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Challenge", for: indexPath)

        cell.textLabel?.text = challenges.data[indexPath.row].namaChallengeGenerate
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator


        return cell
    }

    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView(frame: CGRect.zero)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let detailVC = ChallengeDetailViewController()
        
        navigationController?.pushViewController(detailVC, animated: true)
    }

}
