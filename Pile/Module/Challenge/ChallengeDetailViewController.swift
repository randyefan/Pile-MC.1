//
//  ProgressDetailViewController.swift
//  Pile
//
//  Created by Darindra R on 05/04/21.
//

import UIKit

protocol ChallengeDetailViewDelegate: class {
    func fetchFromHome()
}

class ChallengeDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    weak var delegate: ChallengeDetailViewDelegate?
    var selectedChallenge: ChallengeGenerate?
    var challengeStatus: Status?
    var isFromHome = false

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
            cell.imageDetail.image = UIImage(named: selectedChallenge!.thumbnailChallengeGenerate)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! DetailCell
            cell.isFromHome = isFromHome
            cell.challengeStatus = challengeStatus
            cell.challenge = selectedChallenge
            cell.delegate = self

            return cell
        }
    }
}

extension ChallengeDetailViewController: DetailCellDelegate {
    func dismiss() {
        if isFromHome {
            self.dismiss(animated: true) {
                self.delegate?.fetchFromHome()
            }
        } else {
            self.navigationController?.dismiss(animated: true, completion: {
                self.delegate?.fetchFromHome()
            })
        }

    }
}
