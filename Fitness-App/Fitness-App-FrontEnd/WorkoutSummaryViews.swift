//
//  WorkoutSummaryViews.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/10/24.
//

import SwiftUI

struct WorkoutSummaryView: View {
    @State private var workout = getLocalWorkout(workoutID: 1)!
    
    var body: some View {
        VStack {
            Divider()
            Text(workout.workoutName)
                .bold()
            Text("Body parts placeholder")
            Text("Time placeholder")
            Divider()
            ForEach(workout.exercises, id: \.self) { ex in
                WorkoutSummaryExerciseView(exercise: ex)
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
                    Text("\(exercise.sets) sets * \(exercise.reps) reps")
                    Spacer()
                }
                HStack {
                    Text("\(exercise.weight) lbs")
                    Spacer()
                }
            }
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    WorkoutSummaryView()
}
