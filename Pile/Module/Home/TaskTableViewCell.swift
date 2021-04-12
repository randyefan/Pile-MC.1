//
//  TaskTableViewCell.swift
//  Pile
//
//  Created by Gratianus Martin on 05/04/21.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    
    @IBOutlet weak var challengeTitleText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
