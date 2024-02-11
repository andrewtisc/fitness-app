//
//  MyWorkoutsView.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/10/24.
//

import SwiftUI

struct MyWorkoutsView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Header for "My Workouts" menu
                Text("My Workouts")
                
                // Run through a list of workouts and make a button per workout (takes you to "Workout Summary" view
                ForEach(0..<5) { number in
                    NavigationLink(destination: WorkoutSummaryView()) {
                        Button("Workout Name \(number)"){
                        // STUB: navigates to "Workout Summary" view for that workout
                        }
                            .buttonStyle(.borderedProminent)
                            .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    MyWorkoutsView()
}
