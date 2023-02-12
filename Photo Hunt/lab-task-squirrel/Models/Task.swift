//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Favorite Beach 🏝️",
                 description: "Where is the beach where you will feel the most relaxed at?"),
            Task(title: "Favorite place to eat 🍔",
                 description: "Where is your favorite place to dine in at?"),
            Task(title: "Go to quiet place 🤫",
                 description: "What's that one place where you know it will be quiet?")
        ]
    }
}
