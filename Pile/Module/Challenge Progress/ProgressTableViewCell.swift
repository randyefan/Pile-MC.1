//
//  ProgressTableViewCell.swift
//  Pile
//
//  Created by Dheo Gildas Varian on 07/04/21.
//

import UIKit

class ProgressTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var imageProgress: UIImageView!
    @IBOutlet weak var titleProgressChallenge: UILabel!
    @IBOutlet weak var detailProgressChallenge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
