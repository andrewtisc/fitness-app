//
//  CurrentExerciseView.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 3/1/24.
//

import SwiftUI

struct CurrentExerciseView: View {
    @StateObject var workoutWrap: WorkoutWrapper
    @State private var currentExerciseNum: Int = 1
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    if currentExerciseNum > 1 {
                        currentExerciseNum -= 1
                    }
                }, label: {
                    Image(systemName: "arrowshape.left.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
                Image(systemName: "globe")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .scaledToFit()
                    .padding()
                Button(action: {
                    if currentExerciseNum < workoutWrap.workout.exercises.count {
                        currentExerciseNum += 1
                    }
                }, label: {
                    Image(systemName: "arrowshape.right.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
            }
            Text(workoutWrap.workout.exercises[currentExerciseNum - 1].exerciseName)
                .padding()
            ForEach(workoutWrap.workout.exercises[currentExerciseNum - 1].sets, id: \.self) { set in
                DisplaySetView(set: set)
            }
            EditSetView()
        }
    }
}
struct DisplaySetView: View {
    var set: Set
    
    var body: some View {
        HStack {
            Image(systemName: "square.and.pencil")
                .padding(.horizontal)
            Text("Set \(set.id)")
            Spacer()
            Text("\(set.reps) reps @ \(set.weight) lbs")
                .padding(.horizontal)
        }
    }
}
struct EditSetView: View {
    //var exercise: Exercise
    @State private var weight: Int = 45
    @State private var reps: Int = 10
    
    var body: some View {
        VStack {
            Text("Set 4")
            HStack {
                VStack {
                    HStack {
                        Text("Weight: ")
                            .padding(.horizontal)
                        Stepper(value: $weight, in: 0...310, step: 5) {
                            TextField("", value: $weight, formatter: NumberFormatter())
                                .border(Color.black)
                        }
                    }
                    HStack {
                        Text("Reps: ")
                            .padding(.horizontal)
                        Stepper(value: $reps, in: 0...100, step: 1) {
                            TextField("", value: $reps, formatter: NumberFormatter())
                                .border(Color.black)
                        }
                    }
                }
                Button(action: {
                    // STUB: Add set to exercise.sets somehow, with entered weight and reps
                    //let se = Set(id: 99, reps: 999, weight: 9999)
                    //let ex = Exercise(exerciseID: 1, exerciseName: "MadeUpExercise", sets: [se])
                    //writeLocalJSON(codableStruct: ex, fileName: "testname")
                }, label: {
                    Text("Finish Set")
                })
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    CurrentExerciseView(workoutWrap: WorkoutWrapper(workout: getLocalWorkout(id: 1)!))
}
