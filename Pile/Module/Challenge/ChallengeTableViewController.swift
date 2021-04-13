//
//  ChallengeTableViewController.swift
//  Pile
//
//  Created by Darindra R on 05/04/21.
//

import UIKit

protocol ChallengeTableViewDelegate: class {
    func fetchFromHome()
}

class ChallengeTableViewController: UITableViewController {
    var challenges = Challenges()

    weak var delegate: ChallengeTableViewDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()

    }

    func setupTable() {
        title = "Challenges"
        navigationController?.navigationBar.prefersLargeTitles = true

        self.tableView.register(UINib(nibName: "ChallengeCell", bundle: nil), forCellReuseIdentifier: "challengeCell")
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return challenges.data.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "challengeCell", for: indexPath) as! ChallengeCell


        cell.challenge = challenges.data[indexPath.row]
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        cell.selectionStyle = .none

        return cell
    }

    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView(frame: CGRect.zero)
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Challenge", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(identifier: "ChallengeDetail") as? ChallengeDetailViewController {
            detailVC.selectedChallenge = challenges.data[indexPath.row]
            detailVC.delegate = self
            navigationController?.pushViewController(detailVC, animated: true)
        }

    }

}

extension ChallengeTableViewController: ChallengeDetailViewDelegate {
    func fetchFromHome() {
        self.delegate?.fetchFromHome()
    }
}
