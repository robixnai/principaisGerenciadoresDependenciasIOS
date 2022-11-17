//
//  ViewController.swift
//  AppMain
//
//  Created by Robson Moreira on 17/11/22.
//

import UIKit
import ChartFeature

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showGrafico(_ sender: Any) {
        navigationController?.pushViewController(ChartFeatureViewController(), animated: true)
    }
    
}

