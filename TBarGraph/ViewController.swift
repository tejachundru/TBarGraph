//
//  ViewController.swift
//  TBarGraph
//
//  Created by Teja on 3/21/18.
//  Copyright © 2018 Teja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var barGraph: BarChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barGraph.barColors = [UIColor.black,UIColor.green,UIColor.brown]
        barGraph.valuesArray = [45.65,95.23,45.85,86.56,45.62]
        
        
        
        
       
    }
    @IBAction func animateBar(_ sender: Any) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

