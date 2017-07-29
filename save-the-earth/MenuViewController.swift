//
//  MenuViewController.swift
//  save-the-earth
//
//  Created by Masaya Hayashi on 2017/07/29.
//  Copyright © 2017年 Masaya Hayashi. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var bestScoreLabel: UILabel!

    var bestScore: Int = 0 {
        didSet {
            self.bestScoreLabel.text = "Best Score: \(bestScore)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let score = UserDefaults.standard.value(forKey: "bestScore") else { return }
        self.bestScore = score as! Int
    }

}
