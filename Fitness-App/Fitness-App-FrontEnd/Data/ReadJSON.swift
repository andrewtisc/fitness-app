//
//  ReadJSON.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/11/24.
//

import Foundation

func readLocalJSON(fileName name: String) -> Data? {
    // Takes a fileName (without the json extension) and attempts to return the local JSON as Data
    // Get the URL of the JSON file
    guard let fileURL = Bundle.main.url(forResource: name, withExtension: "json") else {
        fatalError("Couldn't find the JSON file in the bundle.")
    }
    
    do {
        // Read the contents of the file into a Data object
        let jsonData = try Data(contentsOf: fileURL)
        return jsonData
    } catch {
        print("error: Couldn't read the JSON file contents.")
    }
    return nil
}

func getLocalWorkout(id: Int) -> Workout? {
    let data = readLocalJSON(fileName: "workout_\(id)")
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
    let workout = try? decoder.decode(Workout.self, from: data!)
    return workout
}

