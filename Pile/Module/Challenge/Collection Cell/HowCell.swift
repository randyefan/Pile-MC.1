//
//  HowCell.swift
//  Pile
//
//  Created by Darindra R on 12/04/21.
//

import UIKit

class HowCell: UICollectionViewCell {
    @IBOutlet weak var howImage: UIImageView!
    @IBOutlet weak var howDescription: UILabel!

    var how: HowGenerate? {
        didSet {
            if let filled = how {
                howDescription.text = filled.captionGenerate
                howImage.image = UIImage(named: filled.iconGenerate)
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
