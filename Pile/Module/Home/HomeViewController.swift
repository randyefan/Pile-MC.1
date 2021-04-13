//
//  HomeViewController.swift
//  Pile
//
//  Created by Gratianus Martin on 05/04/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var worldLevelText: UILabel!
    @IBOutlet weak var userNameText: UILabel!
    @IBOutlet weak var totalEpText: UILabel!
    @IBOutlet weak var addTaskButton: UIButton!
    @IBOutlet weak var taskListTableView: UITableView!
    @IBOutlet weak var totalEpProgressView: UIProgressView!
    @IBOutlet weak var imageSequence: UIImageView!
    @IBOutlet weak var addTaskMiniButton: UIButton!
    
    var challengesData: [DailyChallenges]?
    var userData: User?
    var imageList: [UIImage]!
    var totalEP: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        let dirPaths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docsDir = dirPaths[0]
        print(docsDir)
    }

    override func viewWillAppear(_ animated: Bool) {
        setup()
    }

    func setup() {
        self.taskListTableView.tableFooterView = UIView()
        userData = CoreDataManager.shared.fetchUser()
        fetchChallenges()
        validateIfUserExist()
    }

    func fetchChallenges() {
        challengesData = CoreDataManager.shared.fetchChallengeStatusToday()
    }

    func validateIfUserExist() {
        //validate is user exist
        if userData == nil {
            let WelcomePageVC = WelcomePageViewController()
            WelcomePageVC.modalPresentationStyle = .fullScreen
            self.present (WelcomePageVC, animated: true, completion: nil)

        } else {
            isChallengeExist()
            setUI()
        }
    }


    func setUI() {
        DispatchQueue.main.async {
            //display user info
            self.userNameText.text = self.userData!.name
            self.worldLevelText.text = "Level \(self.userData!.points / 100)"
            self.totalEpText.text = "\(self.userData!.points % 100)/100"
            self.totalEpProgressView.setProgress(Float(self.userData!.points % 100) / 100, animated: true)

            //world data
            self.imageSequenceSetup()
        }
    }

    func imageSequenceSetup() {
        imageList = [UIImage(named: "image-1")!,
                     UIImage(named: "image-2")!,
                     UIImage(named: "image-3")!]

        imageSequence.contentMode = .center
        imageSequence.image = UIImage.animatedImage(with: imageList, duration: 1.0)
    }



    func isChallengeExist() {
        addTaskButton.layer.cornerRadius = 5.0
        if challengesData?.count == 0 {
            addTaskButton.isHidden = false
            addTaskMiniButton.isHidden = true
            taskListTableView.isHidden = true
        } else {
            taskListTableView.reloadData()
            addTaskButton.isHidden = true
            addTaskMiniButton.isHidden = false
            taskListTableView.isHidden = false
        }
    }


    @IBAction func addTaskAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Challenge", bundle: nil)
        let challengesVC = (storyboard.instantiateViewController(identifier: "ChallengesTable") as? ChallengeTableViewController)!
        challengesVC.delegate = self
        let navController = UINavigationController(rootViewController: challengesVC)
        self.navigationController?.present(navController, animated: true, completion: nil)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return challengesData?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = taskListTableView.dequeueReusableCell(withIdentifier: "challengeTitleCell") as! TaskTableViewCell
        let status = self.challengesData?[indexPath.row].status
        cell.challengeTitleText.text = challengesData?[indexPath.row].challenges.nama
        if status?.isCompleted == true {
            cell.tintColor = .systemBlue
        } else {
            cell.tintColor = .opaqueSeparator
        }
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.selectionStyle = .none
            //if challenge is completed
            if cell.tintColor == .opaqueSeparator {
                showCompletanceAlert(indexPath: indexPath, tableView: tableView)
            }
        }
    }

    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete { //handle delete here
            showRemoveAlert(indexPath: indexPath, tableView: tableView)
        }
    }

    func showRemoveAlert(indexPath: IndexPath, tableView: UITableView) {
        let alert = UIAlertController(title: "Attention", message: "You are about to remove this challenge", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Remove", style: .destructive, handler: { action in
            guard let _ = self.challengesData?[indexPath.row].challenges, let status = self.challengesData?[indexPath.row].status else {
                return
            }
            CoreDataManager.shared.deleteChallenge(status: status)
            self.challengesData?.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            self.fetchChallenges()
            self.isChallengeExist()

        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }

    func showCompletanceAlert(indexPath: IndexPath, tableView: UITableView) {
        let alert = UIAlertController(title: "Attention", message: "Are you sure you already complete this task?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { action in
            guard let _ = self.challengesData?[indexPath.row].challenges, let status = self.challengesData?[indexPath.row].status else {
                return
            }

            let _ = CoreDataManager.shared.updateStatusCompleted(status: status)
            tableView.cellForRow(at: indexPath)?.tintColor = .systemBlue
            self.userData?.points += (self.challengesData?[indexPath.row].challenges.pointReward)!
            let _ = CoreDataManager.shared.updatePointUser(user: self.userData!, point: Int(self.userData!.points))
            self.setUI()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

extension HomeViewController: ChallengeTableViewDelegate {
    func fetchFromHome() {
        self.fetchChallenges()
        self.isChallengeExist()
    }
}
