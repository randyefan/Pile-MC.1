//
//  ProgressDetailViewController.swift
//  Pile
//
//  Created by Darindra R on 05/04/21.
//

import UIKit

class ChallengeDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var selectedChallenge: ChallengeGenerate?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupDetail()
    }

    func setupDetail() {
        if let challenge = selectedChallenge {
            selectedChallenge = challenge
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! ImageCell


            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! DetailCell
            cell.challenge = selectedChallenge
            cell.delegate = self
            return cell

        }
    }
}

extension ChallengeDetailViewController: ChallengeDetailViewDelegate {
    func dismiss() {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
}
