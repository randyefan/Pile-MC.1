//
//  DetailCell.swift
//  Pile
//
//  Created by Darindra R on 08/04/21.
//

import UIKit

protocol DetailCellDelegate: class {
    func dismiss()
}

class DetailCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var challengeTitle: UILabel!
    @IBOutlet weak var challengeDescription: UILabel!
    @IBOutlet weak var whyDescription: UILabel!
    @IBOutlet weak var everydayPoint: UILabel!
    @IBOutlet weak var addTaskButton: UIButton!

    weak var delegate: DetailCellDelegate?

    var joinWhy = ""
    var isFromHome = false
    var challengeStatus: Status? {
        didSet {
            if challengeStatus?.isCompleted == true {
                addTaskButton.backgroundColor = .opaqueSeparator
                addTaskButton.isEnabled = false
            }
        }
    }
    var challenge: ChallengeGenerate? {
        didSet {
            if isFromHome {
                addTaskButton.setTitle("Complete Task", for: .normal)
            }
            
            challengeTitle.text = challenge?.namaChallengeGenerate
            challengeDescription.text = challenge?.descriptionGenerate
            everydayPoint.text = "\((challenge?.pointRewardGenerate)!) Point / Day"
            addTaskButton.layer.cornerRadius = 5

            for i in 0..<(challenge?.whyGenerate.count)! {
                joinWhy += "\(challenge?.whyGenerate[i].detailGenerate ?? "")"

                if(i < (challenge?.whyGenerate.count)! - 1) {
                    joinWhy += "\n\n"
                }
            }

            whyDescription.text = joinWhy
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib(nibName: "HowCell", bundle: nil), forCellWithReuseIdentifier: "howCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (challenge?.howGenerate.count)!
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "howCell", for: indexPath) as! HowCell
        cell.how = challenge?.howGenerate[indexPath.row]

        return cell
    }

    @IBAction func addTaskAction(_ sender: UIButton) {
        if isFromHome {
            guard let user = CoreDataManager.shared.fetchUser() else {
                return
            }
            
            if let challengeStatus = challengeStatus, challengeStatus.isCompleted != true {
                let point: Int = Int(user.points) + Int(challenge!.pointRewardGenerate)
                let _ = CoreDataManager.shared.updateStatusCompleted(status: challengeStatus)
                let _ = CoreDataManager.shared.updatePointUser(user: user, point: point)
            }
        } else {
            guard let user = CoreDataManager.shared.fetchUser() else { return }
            CoreDataManager.shared.addChallengeToUser(user: user, challenge: challenge!)
        }
        delegate?.dismiss()
    }
}
