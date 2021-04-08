//
//  ProgressTableViewCell.swift
//  Pile
//
//  Created by Dheo Gildas Varian on 07/04/21.
//

import UIKit

class ProgressTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleProgressChallenge: UILabel!
    @IBOutlet weak var progressBarView: CircularProgressBar!
    @IBOutlet weak var progressBarLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
