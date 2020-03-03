//
//  EntrhTableViewCell.swift
//  NotificationPatternsJournal
//
//  Created by Kelsey Sparkman on 3/3/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import UIKit

protocol EntryTableViewCellDelegate: class {
    func switchToggledOn(cell: EntryTableViewCell)
    
}
class EntryTableViewCell: UITableViewCell {
    //Mark: Outlets
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var higherOrLowerLabel: UILabel!
    
    @IBOutlet weak var isEnabledSwitch: UISwitch!
    
    
    //MARK: - Properties
    var entry: Entry?
    weak var delegate: EntryTableViewCellDelegate?
    
    //MARK: - Helper Functions
    func setEntry(entry: Entry, averageHappiness: Int){
        self.entry = entry
        updateUI(averageHappiness: averageHappiness)
    }
    func updateUI(averageHappiness: Int){
        guard let entry = entry else {return}
        titleLabel.text = entry.title
        isEnabledSwitch.isOn = entry.isIncluded
        higherOrLowerLabel.text = entry.happiness >= averageHappiness ? "Higher" : "Lower"
        
    }
    
    @IBAction func toggledIsIncluded(_ sender: Any) {
        delegate?.switchToggledOn(cell: self)
        
    }
}

