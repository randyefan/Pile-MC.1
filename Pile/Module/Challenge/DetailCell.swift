//
//  DetailCell.swift
//  Pile
//
//  Created by Darindra R on 08/04/21.
//

import UIKit

class DetailCell: UITableViewCell {
    @IBOutlet weak var challengeTitle: UILabel!
    @IBOutlet weak var challengeDescription: UILabel!
    @IBOutlet weak var whyDescription: UILabel!
    
    var challenge: ChallengeGenerate? {
        didSet {
            challengeTitle.text = challenge?.namaChallengeGenerate
            challengeDescription.text = challenge?.descriptionGenerate
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
