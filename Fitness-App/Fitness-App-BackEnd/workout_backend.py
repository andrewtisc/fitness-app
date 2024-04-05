from flask import Flask, jsonify, send_file
from pyngrok import ngrok

app = Flask(__name__)

# Route with parameter
@app.route('/api/workouts/<int:workout_id>', methods=['GET'])
def get_workout(workout_id):
    # Generate the path to the JSON file based on the workout ID
    json_file_path = f'/Users/andrewtischhauser/Developer/Projects/fitness-app-vscode/fitness-app/Fitness-App/Fitness-App-FrontEnd/Sample Data/workout_{workout_id}.json'
    
    # Try to send the JSON file
    try:
        return send_file(json_file_path, mimetype='application/json')
    except FileNotFoundError:
        return jsonify({'error': 'Workout not found'}), 404

if __name__ == '__main__':
    # Start ngrok tunnel
    public_url = ngrok.connect(5000)
    print(' * Tunnel URL:', public_url)

    # Start Flask app
    app.run(debug=True)