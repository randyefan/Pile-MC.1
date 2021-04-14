//
//  ProgressDetailViewController.swift
//  Pile
//
//  Created by Randy Efan Jayaputra on 13/04/21.
//

import UIKit

class ProgressDetailViewController: UIViewController {
    
    @IBOutlet weak var daysTotalLabel: UILabel!
    @IBOutlet weak var progressBarLabel: UIProgressView!
    @IBOutlet weak var dayWeeklyCollectionView: UICollectionView!
    @IBOutlet weak var bestStreakLabel: UILabel!
    
    private let sectionInsetsCollectionView = UIEdgeInsets(top: 15.0, left: 15.0, bottom: 15.0, right: 15.0)
    private let itemsPerRow: CGFloat = 7
    
    private var status: [Status]?
    var progressChallenge: ProgressChallenge?
    
    private let dayLabel = ["S", "M", "T", "W", "T", "F", "S"]
    private var dateFromStartOfWeeks = Date().daysOfWeek(using: .gregorian)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        guard let challenge = progressChallenge, let status = CoreDataManager.shared.fetchStatusForAWeek(challenge: challenge.challenges) else {
            return
        }
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.progressBarLabel.progress = Float(challenge.status.count)/Float(30)
        if challenge.status.count == 1 {
            self.daysTotalLabel.text = "\(challenge.status.count) Day out of 30 Days"
        } else {
            self.daysTotalLabel.text = "\(challenge.status.count) Days out of 30 Days"
        }
        self.bestStreakLabel.text = "Your best streak: \(countBestStreak(challenge: challenge))"
        self.status = status
        dayWeeklyCollectionView.register(UINib(nibName: "DateCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "dayCell")
        self.dayWeeklyCollectionView.delegate = self
        self.dayWeeklyCollectionView.dataSource = self
    }
    
    private func countBestStreak(challenge: ProgressChallenge) -> Int {
        var bestStreak = 0
        var bestStreaks: [Int] = []
        for i in challenge.status {
            if i.isCompleted {
                bestStreak += 1
            } else {
                bestStreak = 0
            }
            bestStreaks.append(bestStreak)
        }
        return bestStreaks.max() ?? 0
    }
}

extension ProgressDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dayCell", for: indexPath) as! DateCollectionViewCell
        
        guard let status = self.status else {
            return cell
        }
        
        cell.labelDay.text = dayLabel[indexPath.row]
        
        for i in status {
            if dateFromStartOfWeeks[indexPath.row].hasSame(.day, as: i.date!) {
                if i.isCompleted {
                    cell.labelDay.textColor = #colorLiteral(red: 0.1294117647, green: 0.5882352941, blue: 0.3254901961, alpha: 1)
                    cell.roundedView.backgroundColor = #colorLiteral(red: 0.1294117647, green: 0.5882352941, blue: 0.3254901961, alpha: 1)
                } else {
                    cell.labelDay.textColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
                    cell.roundedView.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
                }
            }
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsetsCollectionView.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsetsCollectionView
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsetsCollectionView.left
    }
}
