//
//  DetailCell.swift
//  Pile
//
//  Created by Darindra R on 08/04/21.
//

import UIKit

class DetailCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var challengeTitle: UILabel!
    @IBOutlet weak var challengeDescription: UILabel!
    @IBOutlet weak var whyDescription: UILabel!
    @IBOutlet weak var addTaskButton: UIButton!

    var joinWhy = ""
    var challenge: ChallengeGenerate? {
        didSet {
            challengeTitle.text = challenge?.namaChallengeGenerate
            challengeDescription.text = challenge?.descriptionGenerate
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

}