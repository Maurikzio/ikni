//
//  WelcomeViewController.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcome1: UILabel!
    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var explanationText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.title = "Welcome"
        welcome1.text = "Congratulations and welcome again to the Institute of Computer Sciences and Information Technologies."
        
        
        explanationLabel.text = "System Explanation"
        
        explanationText.text = "With the current system you would be able to access to Institutes's information as well:\n -Staff directory\n-Institute Departments and its composition\n -Information about the different disciplines included in the study program\n-Information about the disciplines and the teachers\n -Institute location and its diferent buildings\n-Institute events and news, and of course the calendar of activities in the Institute of Computer Sciences and Information Technologies"
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
