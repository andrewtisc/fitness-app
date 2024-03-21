//
//  WriteJSON.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 3/13/24.
//

import Foundation

func writeLocalJSON(fileName: String, workout: Workout) {
    // Convert Workout object to JSON data
    let jsonData: Data
    do {
        jsonData = try JSONSerialization.data(withJSONObject: workout, options: [])
    } catch {
        print("Error converting to JSON: \(error)")
        return
    }
    
    // Find URL for app documents directory where workout JSON will be saved
    guard let documentsDirectoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
        return
    }
    let fileURL = documentsDirectoryURL.appendingPathComponent(fileName)
    
    // Save workout JSON to file
    do {
        try jsonData.write(to: fileURL)
        print("JSON data saved successfully.")
    } catch {
        print("Error saving JSON data: \(error)")
    }
}
