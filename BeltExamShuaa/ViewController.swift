//
//  ViewController.swift
//  BeltExamShuaa
//
//  Created by administrator on 13/10/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var qsLabel: UILabel!
    
    @IBOutlet weak var firstButto: UIButton!
    
    @IBOutlet weak var secondButto: UIButton!
    
    @IBOutlet weak var therdButto: UIButton!
    @IBOutlet weak var fourthButto: UIButton!
    //--------------
    struct Question {
        let question : String
        let answers : [String]
        let rightAnswer: Int
    }
    // us struct here
    var questions: [Question] = [
    Question(question: "The current Iphone has 6 GB RAM.THE firstIphone had how much RAM?", answers: ["10 GB","3 GB","128 GB","had no RAM"], rightAnswer: 2),
        Question(question: "When was SWIFT language created?", answers: ["1990","2014","2020","1888"], rightAnswer: 1),
        Question(question: "what s capital of KSA ", answers: ["Tabuk","Jiddah","Riyadh","NEOM"], rightAnswer: 2),
        Question(question: " what is SWIFT", answers: ["OS","App","phone","programing Language"], rightAnswer: 3)]
    var pickQS: Question? //pick Qs to put in label
    var nextQS = 0 // increes and go to next Qs
    var score = 0
   // var endScreen = true
    override func viewDidLoad() {
        super.viewDidLoad()
        //change borde of buttons
        firstButto.layer.cornerRadius = 6
        firstButto.layer.borderWidth = 2
        firstButto.layer.borderColor = UIColor.white.cgColor
        secondButto.layer.cornerRadius = 6
        secondButto.layer.borderWidth = 2
        secondButto.layer.borderColor = UIColor.white.cgColor
       therdButto.layer.cornerRadius = 6
        therdButto.layer.borderWidth = 2
        therdButto.layer.borderColor = UIColor.white.cgColor
        fourthButto.layer.cornerRadius = 6
       fourthButto.layer.borderWidth = 2
        fourthButto.layer.borderColor = UIColor.white.cgColor
      // put Qs and answer in label and Buttons
        pickQS = questions[nextQS]
        qsLabel.text = pickQS?.question
        firstButto.setTitle(pickQS?.answers[0], for: .normal)
       secondButto.setTitle(pickQS?.answers[1], for: .normal)
        therdButto.setTitle(pickQS?.answers[2], for: .normal)
        fourthButto.setTitle(pickQS?.answers[3], for: .normal)
    }

    @IBAction func firstPress(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVCiD") as! SecondViewController
            
         
        if 0 == pickQS?.rightAnswer{
            score += 1
            vc.scoreText = "Score: \(score)"
            vc.chooseResultText = "CORRECT! \n your score is: \(score) out of 4"
            vc.view.backgroundColor = .blue
            
        }
        else{
           
            vc.chooseResultText = "NOT QUITE \n your Scure is: \(score) out of 4"
            vc.view.backgroundColor = .black
        }
        self.present(vc, animated: true, completion: nil)
        updett()    }
    
    @IBAction func secondPress(_ sender: UIButton) { let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVCiD") as! SecondViewController
        
        
        if 1 == pickQS?.rightAnswer{
            score += 1
            vc.scoreText = "Score: \(score)"
            vc.chooseResultText = "CORRECT! \n your score is: \(score) out of 4"
            vc.view.backgroundColor = .blue
            
        }
        else{
          
            vc.chooseResultText = "NOT QUITE \n your Scure is: \(score) out of 4"
            vc.view.backgroundColor = .black
        }
        self.present(vc, animated: true, completion: nil)
        updett()
    }
    
    @IBAction func thirdPress(_ sender: UIButton) { let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVCiD") as! SecondViewController
        
        
        if 2 == pickQS?.rightAnswer{
            score += 1
            vc.scoreText = "Score: \(score)"
            vc.chooseResultText = "CORRECT! \n your score is: \(score) out of 4"
            vc.view.backgroundColor = .blue
            
        }
        else{
           
            vc.chooseResultText = "NOT QUITE \n your Scure is: \(score) out of 4"
            vc.view.backgroundColor = .black
        }
        self.present(vc, animated: true, completion: nil)
        updett()
    }
    
    @IBAction func lastPress(_ sender: UIButton) { let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVCiD") as! SecondViewController
        
        
        if 3 == pickQS?.rightAnswer{
            if score<4{  score += 1}
            vc.scoreText = "Score: \(score)"
            vc.chooseResultText = "CORRECT! \n your score is: \(score) out of 4"
            vc.view.backgroundColor = .blue
            
        }
        else{
            
            vc.chooseResultText = "NOT QUITE \n your Scure is: \(score) out of 4"
            vc.view.backgroundColor = .black
        }
        self.present(vc, animated: true, completion: nil)
        updett()
    }
    
    func updett(){
        if nextQS < 3{
            nextQS += 1
            pickQS = questions[nextQS]
            qsLabel.text = pickQS?.question
            firstButto.setTitle(pickQS?.answers[0], for: .normal)
            secondButto.setTitle(pickQS?.answers[1], for: .normal)
            therdButto.setTitle(pickQS?.answers[2], for: .normal)
            fourthButto.setTitle(pickQS?.answers[3], for: .normal)
    
}

    }

}

