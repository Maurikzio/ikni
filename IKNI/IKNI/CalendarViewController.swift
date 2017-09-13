//
//  CalendarViewController.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    //la coleccion
    @IBOutlet weak var myCalendarCollectionView: UICollectionView!
    
    var collectionView: UICollectionView!
    
    var fecha = ["Thursday,March 30", "Friday,March 31", "Monday, March 03", "Tuesday,March 04", "Wednesday, March 05", "Thursday, March 06", "Friday, March 07" ]
    
    var noticia = ["\tZaliks starts", "\tExamens starts", "\tMeeting Software Departmet", "\tHoliday Saint Pedro", "\tHoliday Independence day", "\tComissions beginning", "\tPractice beginning, 4th course"]
    
    var informacion = ["More information in each department",
                       "More information in each department",
                       "Building 1, room 217, 14:00 pm",
                       "For all the students",
                       "No assistance",
                       "Schdues in each department.",
                       "Each student must go to the practice place acorded in the department"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Calendar"
        self.myCalendarCollectionView.delegate = self
        self.myCalendarCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return noticia.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calendarCollection", for: indexPath) as! StaffCollectionViewCell
        
        cell.dataLabelView.text = fecha[indexPath.row]
        
        cell.newsLabelView.text = noticia[indexPath.row]
        
        cell.infoLabelView.text = informacion[indexPath.row]
        
        return cell
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
