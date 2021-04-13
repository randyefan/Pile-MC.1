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
    
    var progressChallenge: ProgressChallenge?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        guard let challenge = progressChallenge else {
            return
        }
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.progressBarLabel.progress = Float(challenge.status.count)/Float(30)
        if challenge.status.count == 1 {
            self.daysTotalLabel.text = "\(challenge.status.count) Day out of 30 Days"
        } else {
            self.daysTotalLabel.text = "\(challenge.status.count) Days out of 30 Days"
        }
        self.bestStreakLabel.text = "Your best streak: \(2)"
//        self.dayWeeklyCollectionView.delegate = self
//        self.dayWeeklyCollectionView.dataSource = self
    }
}

extension ProgressDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        UICollectionViewCell()
    }
    
    
}
