//
//  DataTypes.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/10/24.
//

import Foundation
import SwiftUI

struct Workout: Codable, Hashable, Identifiable {
    var id: Int
    var date: Date?
    var workoutName: String
    var exercises: [Exercise]
}

class WorkoutWrapper: ObservableObject {
    @Published var workout: Workout

    init(workout: Workout) {
        self.workout = workout
    }
    
    // Additional methods to modify the workout data can be added here
}

struct Exercise: Codable, Hashable, Identifiable {
    var id: Int
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
