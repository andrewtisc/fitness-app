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
    var sets: [Set]
    //var reps: Int
    //var weight: Int
}

struct Set: Codable, Hashable, Identifiable {
    //Note: Set is a keyword, consider renaming this and refactoring
    let id: Int
    var reps: Int
    var weight: Int
}
