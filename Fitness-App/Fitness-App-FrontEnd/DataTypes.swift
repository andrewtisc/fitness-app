//
//  DataTypes.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/10/24.
//

import Foundation

struct Workout: Codable, Hashable {
    var workoutID: Int
    var workoutName: String
    var exercises: [Exercise]
}

struct Exercise: Codable, Hashable {
    var exerciseID: Int
    var exerciseName: String
    var sets: Int
    var reps: Int
    var weight: Int
}
