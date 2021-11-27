//
//  SecondViewController.swift
//  BeltExamShuaa
//
//  Created by administrator on 13/10/2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var chooseResult: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var scoreText : String?
    var chooseResultText : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = scoreText
        chooseResult.text = chooseResultText
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.dismiss(animated: true, completion: nil)
        }
   
    }
   

}
