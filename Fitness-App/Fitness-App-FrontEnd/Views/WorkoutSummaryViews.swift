//
//  WorkoutSummaryViews.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/10/24.
//

import SwiftUI

struct WorkoutSummaryView: View {
    var workout: Workout
    //@State private var workout = getLocalWorkout(id: 2)!
    
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                HStack {
                    VStack {
                        Text(workout.workoutName)
                            .bold()
                        Text("Body parts placeholder")
                        Text("Time placeholder")
                    }
                    .padding()
                    NavigationLink("Start Workout", destination: CurrentWorkoutView(workoutWrap: WorkoutWrapper(workout: workout)))
                        .buttonStyle(.borderedProminent)
                }
                Divider()
                ForEach(workout.exercises, id: \.self) { ex in
                    WorkoutSummaryExerciseView(exercise: ex)
                }
            }
        }
    }
}

struct WorkoutSummaryExerciseView: View {
    var exercise: Exercise
    
    var body: some View {
        HStack {
            Image("Dumbell Stock Image")
                .resizable()
                .frame(maxWidth: 140, maxHeight: 100)
                .padding(.horizontal)
            VStack {
                HStack {
                    Text(exercise.exerciseName)
                        .bold()
                        .underline()
                    Spacer()
                }
                HStack {
                    Text("\(exercise.sets.count) sets")
                    Spacer()
                }
                HStack {
                    //Note: This only pulls the weight from the first set, which is not meaningful
                    Text("\(exercise.sets[0].weight) lbs")
                    Spacer()
                }
            }
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    if let wo = getLocalWorkout(id: 1) {
        WorkoutSummaryView(workout: wo)
    } else {
        Text("Failed to unwrap workout in WorkoutSummaryView preview.")
    }
}
