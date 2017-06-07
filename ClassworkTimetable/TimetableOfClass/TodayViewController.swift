//
//  TodayViewController.swift
//  TimetableOfClass
//
//  Created by Taillook on 2017/05/20.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    var timeTable = Timetable(frame: CGRect(x: 0, y: 0, width: 600, height: 400), table: [["a"], ["b"], ["c"]])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeTable.backgroundColor = UIColor.blue
        self.view.addSubview(timeTable)
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
