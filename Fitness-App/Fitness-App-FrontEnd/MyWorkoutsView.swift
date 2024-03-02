//
//  MyWorkoutsView.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/10/24.
//

import SwiftUI

struct MyWorkoutsView: View {
    var workouts: [Workout]
    
    var body: some View {
        NavigationStack {
            VStack {
                // Header for "My Workouts" menu
                Text("My Workouts")
                Divider()
                // Run through a list of workouts and make a button per workout (takes you to "Workout Summary" view

                ForEach(workouts, id:\.self) { wo in
                    NavigationLink("Workout \(wo.workoutID): \(wo.workoutName)", destination: WorkoutSummaryView(workout: wo))
                        .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

#Preview {
    MyWorkoutsView(workouts: [getLocalWorkout(workoutID: 1)!])
}
