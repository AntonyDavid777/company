from flask import Flask,render_template,request,jsonify
from database import cursor
app=Flask(__name__)
@app.route("/")
def home():
    return render_template("index.html")
@app.route("/search", methods=["POST"])
def search():

    data = request.get_json()

    vechile = data["vehicle"].lower()
    brand = data["brand"].lower()
    model = data["model"].lower()

    query = """
    SELECT *
    FROM vechile_info
    WHERE vechile_type=%s
    AND brand=%s
    AND model=%s
    """

    cursor.execute(query, (vechile, brand, model))

    result = cursor.fetchone()

    if result:
        return jsonify(result)
    else:
        return jsonify({
            "error": "Vehicle not found"
        })
if __name__=="__main__":
    app.run(debug=True)