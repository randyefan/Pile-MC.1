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
    
    var challenges = Challenges()
    var challengesData: [DailyChallenges]?
    var userData: User?
    var totalEP: Int?
    var userLevel: Int?{
        willSet(newLevel){
            if userLevel != nil{
                if userLevel != newLevel{
                    let WorldTransisitionVC = storyboard?.instantiateViewController(identifier: "WorldLevelUp") as! WorldLevelUpViewController
                    WorldTransisitionVC.level = newLevel!
                    self.present(WorldTransisitionVC, animated: true, completion: nil)
                }
            }
        }
        
        didSet {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime(uptimeNanoseconds: 10)) {
                self.imageSequenceSetup()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.imageSequenceSetup()
        
        if(userData != nil){
            userLevel = Int((userData!.points/100) + 1)
        }
        

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
            let WelcomePageVC = WelcomePageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
            WelcomePageVC.modalPresentationStyle = .fullScreen
            self.present (WelcomePageVC, animated: true, completion: nil)

        } else {
            isChallengeExist()
            setUI()
        }
    }


    func setUI() {
            self.userLevel = Int(self.userData!.points / 100 + 1)
            self.userNameText.text = self.userData!.name
            self.worldLevelText.text = "Level \(self.userLevel!)"
            self.totalEpText.text = "\(self.userData!.points % 100)/100"
            self.totalEpProgressView.setProgress(Float(self.userData!.points % 100) / 100, animated: true)
            
            //world data
            self.updateLevel()
    }
    
    func updateLevel() {
        switch userData!.points {
        case 0...99:
            if userLevel! != userData!.points / 100 + 1 {
                userLevel = Int((userData!.points/100) + 1)
            }
        case 100...199:
            if userLevel! != userData!.points / 100 + 1 {
                userLevel = Int((userData!.points/100) + 1)
            }
        case 200...299:
            if userLevel! != userData!.points / 100 + 1 {
                userLevel = Int((userData!.points/100) + 1)
            }
        case 300...399:
            if userLevel! != userData!.points / 100 + 1 {
                userLevel = Int((userData!.points/100) + 1)
            }
        default:
            if userLevel! != userData!.points / 100 + 1 {
                userLevel = Int((userData!.points/100) + 1)
            }
        }
        
    }

    func imageSequenceSetup() {
        var imageList = [UIImage]()
        switch userLevel ?? 1 {
        case 1:
            for frame in (0...300) {
                if frame < 10{
                    imageList.append(UIImage(named: "LEVEL0_00\(frame)")!)
                }else if frame < 100 {
                    imageList.append(UIImage(named: "LEVEL0_0\(frame)")!)
                }else{
                    imageList.append(UIImage(named: "LEVEL0_\(frame)")!)
                }
            }
        case 2:
            for frame in (0...300) {
                if frame < 10{
                    imageList.append(UIImage(named: "LEVEL1_00\(frame)")!)
                }else if frame < 100 {
                    imageList.append(UIImage(named: "LEVEL1_0\(frame)")!)
                }else{
                    imageList.append(UIImage(named: "LEVEL1_\(frame)")!)
                }
            }
        case 3:
            for frame in (0...300) {
                if frame < 10{
                    imageList.append(UIImage(named: "LEVEL2_00\(frame)")!)
                }else if frame < 100 {
                    imageList.append(UIImage(named: "LEVEL2_0\(frame)")!)
                }else{
                    imageList.append(UIImage(named: "LEVEL2_\(frame)")!)
                }
            }
        case 4:
            for frame in (0...300) {
                if frame < 10{
                    imageList.append(UIImage(named: "LEVEL3_00\(frame)")!)
                }else if frame < 100 {
                    imageList.append(UIImage(named: "LEVEL3_0\(frame)")!)
                }else{
                    imageList.append(UIImage(named: "LEVEL3_\(frame)")!)
                }
            }
        case 5:
            for frame in (0...300) {
                if frame < 10{
                    imageList.append(UIImage(named: "LEVEL3_00\(frame)")!)
                }else if frame < 100 {
                    imageList.append(UIImage(named: "LEVEL3_0\(frame)")!)
                }else{
                    imageList.append(UIImage(named: "LEVEL3_\(frame)")!)
                }
            }
        default:
            for frame in (0...300) {
                if frame < 10{
                    imageList.append(UIImage(named: "LEVEL3_00\(frame)")!)
                }else if frame < 100 {
                    imageList.append(UIImage(named: "LEVEL3_0\(frame)")!)
                }else{
                    imageList.append(UIImage(named: "LEVEL3_\(frame)")!)
                }
            }
        }
        
        imageSequence.contentMode = .scaleAspectFill
        imageSequence.image = UIImage.animatedImage(with: imageList, duration: 10.0)
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
        //handle detail challenge to complete challenge
        let storyboard = UIStoryboard(name: "Challenge", bundle: nil)
        let challengesVC = (storyboard.instantiateViewController(identifier: "ChallengeDetail") as? ChallengeDetailViewController)!

        let selectedChallenge = challengesData?[indexPath.row].challenges

        for challenge in challenges.data {
            if challenge.challengeIDGenerate == selectedChallenge?.challengeId {
                challengesVC.selectedChallenge = challenge
                challengesVC.challengeStatus = challengesData?[indexPath.row].status
                challengesVC.isFromHome = true
            }
        }

        challengesVC.delegate = self
        self.navigationController?.present(challengesVC, animated: true, completion: nil)
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
}

extension HomeViewController: ChallengeTableViewDelegate, ChallengeDetailViewDelegate {
    func fetchFromHome() {
        self.fetchChallenges()
        self.validateIfUserExist()
        self.setup()
        guard let challenges = challengesData, let user = userData else {
            return
        }

        if challenges.count == 1 {
            if !challenges[0].status.isCompleted {
                NotificationManager.shared.scheduleNotificationForReminderTask(user: user)
            }
        }
    }
}
