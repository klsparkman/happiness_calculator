//
//  EntryCellTableViewCell.swift
//  NotificationPatternsJournal
//
//  Created by Kelsey Sparkman on 3/3/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import UIKit

class EntryCellTableViewCell: UITableViewCell {

   
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var higherOrLowerLabel: UILabel!
    
    @IBOutlet weak var isEnabledSwitch: UISwitch!
   
    //Mark: - Properties
    var entry: Entry?
    
    //Mark: - Helper functions
    func setEntry(entry: Entry, averageHappiness: Int) {
        self.entry = entry
    }
    
    func updatedUI(averageHappiness: Int) {
        guard let entry = entry else {return}
        titleLabel.text = entry.title
        isEnabledSwitch.isOn = entry.isIncluded
        
        //Update higherOrLowerLabel after notifications
    }
    
    
    
}
