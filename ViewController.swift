//
//  ViewController.swift
//  DiceApp
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let Images = [
        UIImage(named: "dice-1"),
        UIImage(named: "dice-2"),
        UIImage(named: "dice-3"),
        UIImage(named: "dice-4"),
        UIImage(named: "dice-5"),
        UIImage(named: "dice-6")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func throwButtonTapped(_ sender: Any) {
        diceImageView1.image = Images[randoomImageIndex()]
        diceImageView2.image = Images[randoomImageIndex()]
    }
    
    func randoomImageIndex() -> Int {
        return Int.random(in: 0..<Images.count)
    }
    
}

