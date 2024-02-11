//
//  MyWorkoutsView.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/10/24.
//

import SwiftUI

struct MyWorkoutsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                // Header for "My Workouts" menu
                Text("My Workouts")
                
                // Run through a list of workouts and make a button per workout (takes you to "Workout Summary" view
                ForEach(0..<5) { number in
                    /*NavigationLink{
                        WorkoutSummaryView()
                    } label: {
                        Button("Workout Name \(number)"){}
                            .buttonStyle(.borderedProminent)
                    }*/
                    NavigationLink("Workout \(number)", destination: WorkoutSummaryView())
                        .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

#Preview {
    MyWorkoutsView()
}
