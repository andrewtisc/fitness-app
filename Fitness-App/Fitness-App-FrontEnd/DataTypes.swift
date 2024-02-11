//
//  DataTypes.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/10/24.
//

import Foundation

struct Workout: Codable {
    var workoutID: Int
    var workoutName: String
    var exercises: [Exercise]
}

struct Exercise: Codable {
    var exerciseID: Int
    var exerciseName: String
    var sets: Int
    var reps: Int
    var weight: Int
}
