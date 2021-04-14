//
//  WorldLevelUpViewController.swift
//  Pile
//
//  Created by Gratianus Martin on 14/04/21.
//

import UIKit

class WorldLevelUpViewController: UIViewController {

    @IBOutlet weak var transitionImage: UIImageView!
    @IBOutlet weak var levelUpText: UILabel!
    
    var level: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareAnimation()
        // Do any additional setup after loading the view.
    }
    
    private func prepareAnimation(){
        var imageSequence = [UIImage]()
        switch level {
        case 2:
            for frame in (0...300) {
                if frame < 10{
                    imageSequence.append(UIImage(named: "TRANSISI01_00\(frame)")!)
                }else if frame < 100 {
                    imageSequence.append(UIImage(named: "TRANSISI01_0\(frame)")!)
                }else{
                    imageSequence.append(UIImage(named: "TRANSISI01_\(frame)")!)
                }
            }
        case 3:
            for frame in (0...300) {
                if frame < 10{
                    imageSequence.append(UIImage(named: "TRANSISI12_00\(frame)")!)
                }else if frame < 100 {
                    imageSequence.append(UIImage(named: "TRANSISI12_0\(frame)")!)
                }else{
                    imageSequence.append(UIImage(named: "TRANSISI12_\(frame)")!)
                }
            }
        case 4:
            for frame in (0...300) {
                if frame < 10{
                    imageSequence.append(UIImage(named: "TRANSISI231_00\(frame)")!)
                }else if frame < 100 {
                    imageSequence.append(UIImage(named: "TRANSISI23_0\(frame)")!)
                }else{
                    imageSequence.append(UIImage(named: "TRANSISI23_\(frame)")!)
                }
            }
        default:
            for frame in (0...300) {
                if frame < 10{
                    imageSequence.append(UIImage(named: "TRANSISI231_00\(frame)")!)
                }else if frame < 100 {
                    imageSequence.append(UIImage(named: "TRANSISI23_0\(frame)")!)
                }else{
                    imageSequence.append(UIImage(named: "TRANSISI23_\(frame)")!)
                }
            }
        }
        transitionImage.image = UIImage.animatedImage(with: imageSequence, duration: 10.0)
        transitionImage.animationRepeatCount = 1
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
