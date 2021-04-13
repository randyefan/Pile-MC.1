//
//  ChallengeCell.swift
//  Pile
//
//  Created by Darindra R on 12/04/21.
//

import UIKit

class ChallengeCell: UITableViewCell {
    @IBOutlet weak var challengeIcon: UIImageView!
    @IBOutlet weak var challengeName: UILabel!

    var challenge: ChallengeGenerate? {
        didSet {
            if let filled = challenge {
                challengeIcon.image = UIImage(named: filled.iconChallengeGenerate)
                challengeName.text = filled.namaChallengeGenerate
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
