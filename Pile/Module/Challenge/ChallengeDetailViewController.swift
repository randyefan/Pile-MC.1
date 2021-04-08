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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 190
        } else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 190
        } else {
            return UITableView.automaticDimension
        }
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
