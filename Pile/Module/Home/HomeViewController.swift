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

    var challengesData: [DailyChallenges]?
    var userData: User?
    var tableRowHeight = 0
    var imageList: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {


        //fetch user & challenge
        userData = CoreDataManager.shared.fetchUser()
        challengesData = CoreDataManager.shared.fetchChallengeStatusToday()

        //validate is user exist
        if userData == nil {
            let WelcomePageVC = WelcomePageViewController()
            WelcomePageVC.modalPresentationStyle = .fullScreen
            self.present(WelcomePageVC, animated: true, completion: nil)

        } else {
            isChallengeExist()
            fetchUserData()
        }
    }



    func fetchUserData() {

        //user info
        userNameText.text = userData!.name
        worldLevelText.text = "\(userData!.points / 100)"
        totalEpText.text = "\(userData!.points % 100)/100"
        totalEpProgressView.progress = Float(userData!.points % 100 / 100)

        //world data
        imageSequenceSetup()
    }

    func imageSequenceSetup() {
        imageList = [UIImage(named: "image-1")!,
                     UIImage(named: "image-2")!,
                     UIImage(named: "image-3")!]

        imageSequence.contentMode = .center
        imageSequence.image = UIImage.animatedImage(with: imageList, duration: 1.0)
    }



    func isChallengeExist() {
        if challengesData == nil {
            addTaskButton.isHidden = false
            taskListTableView.isHidden = true
            print("Nil")
        } else {
            addTaskButton.isHidden = true
            taskListTableView.isHidden = false
        }
    }


    @IBAction func addTaskAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Challenge", bundle: nil)
        let challengesVC = storyboard.instantiateViewController(identifier: "ChallengesTable")
        let navController = UINavigationController(rootViewController: challengesVC)
        
        self.navigationController?.present(navController, animated: true, completion: nil)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return challengesData?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = taskListTableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell") as! TaskTableViewCell

        cell.challengeTitleText.text = challengesData?[indexPath.row].challenges.nama

        return cell

    }
}
