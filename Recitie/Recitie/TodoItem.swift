//
//  TodoItem.swift
//  Recitie
//
//  Created by Gustavo Filho on 19/10/15.
//  Copyright © 2015 Natalia. All rights reserved.
//

import Foundation
import UIKit

struct TodoItem {
    
    var title: String
    var description: String
    var deadline: NSDate
    var UUID: String
    
        init(deadline: NSDate, title: String, description: String, UUID: String) {
            self.deadline = deadline
            self.title = title
            self.UUID = UUID
            self.description = description
        }
    
        var isOverdue: Bool {
            return (NSDate().compare(self.deadline) == NSComparisonResult.OrderedDescending) // deadline is earlier than current date
        }
    
    
}
