import Foundation
struct Workout: Codable {
    var workoutID: Int
    var workoutName: String
    var exercises: [Exercise]
}

struct Exercise: Codable {
    var exerciseID: Int
    var exerciseName: String
    var sets: Int
    var reps: Int
    var weight: Int
}

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

var mydata = readLocalJSON(fileName: "workout_1")
// var mydict = try JSONSerialization.jsonObject(with: mydata!, options: []) as? [String: Any]
let myworkout = try JSONDecoder().decode(Workout.self, from: mydata!)

print(myworkout.exercises[1])



