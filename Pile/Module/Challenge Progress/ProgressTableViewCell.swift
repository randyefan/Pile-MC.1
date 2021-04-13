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
    
    var progChallenge: ProgressChallenge? {
        didSet{
            if let progChallenge = progChallenge {
                guard let number = countCompletedStatus(challenge: progChallenge) else {
                    return
                }
                progressBarView.progress = CGFloat(number)
                titleProgressChallenge.text = progChallenge.challenges.nama
                if number != 0 {
                    progressBarLabel.text = "\(countProgressPercentLabel(number: number))"
                }
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - Private Function
    //To return progress percent label
    private func countProgressPercentLabel(number: Double) -> String {
        let percentFormatter = NumberFormatter()
        percentFormatter.numberStyle = .percent
        percentFormatter.multiplier = 100.00
        percentFormatter.minimumFractionDigits = 1
        percentFormatter.maximumFractionDigits = 1
        
        guard let percent = percentFormatter.string(from: NSNumber(value: number)) else {
            return "Gagal convert"
        }
        return percent
    }
    
    private func countCompletedStatus(challenge: ProgressChallenge) -> Double? {
        var totalCompleted: Double = 0.0
        for i in challenge.status {
            if i.isCompleted {
                totalCompleted += 1
            }
        }
        
        return totalCompleted/30
    }
}
