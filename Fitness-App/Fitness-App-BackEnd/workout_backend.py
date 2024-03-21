from flask import Flask, jsonify, request

app = Flask(__name__)

# Sample data
books = [
    {'id': 1, 'title': 'Book 1', 'author': 'Author 1'},
    {'id': 2, 'title': 'Book 2', 'author': 'Author 2'},
    {'id': 3, 'title': 'Book 3', 'author': 'Author 3'}
]

# Route with parameter
@app.route('/api/books/<int:book_id>', methods=['GET'])
def get_book(book_id):
    # Find the book with the given ID
    book = next((book for book in books if book['id'] == book_id), None)
    
    # If book not found, return 404
    if book is None:
        return jsonify({'error': 'Book not found'}), 404
    
    # If book found, return it
    return jsonify(book)

if __name__ == '__main__':
    app.run(debug=True)