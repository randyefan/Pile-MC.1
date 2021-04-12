//
//  ProgressDetailViewController.swift
//  Pile
//
//  Created by Darindra R on 05/04/21.
//

import UIKit

class ChallengeDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate {

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
            return cell

        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "howCell", for: indexPath) as! HowCell

        return cell
    }
}
