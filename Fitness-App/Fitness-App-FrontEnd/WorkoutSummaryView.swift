//
//  WorkoutSummaryView.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/10/24.
//

import SwiftUI

struct WorkoutSummaryView: View {
    @State private var workout = getLocalWorkout(workoutID: 1)!
    
    var body: some View {
        Text("Workout Summary View")
        Text(workout.workoutName)
    }
}

#Preview {
    WorkoutSummaryView()
}
