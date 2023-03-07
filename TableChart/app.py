from flask import Flask, render_template
import mysql.connector
import pandas as pd
import plotly.express as px
import datetime
app = Flask(__name__)

# Define the database connection parameters
db_params = {
    "host": "...",
    "user": "...",
    "password": "...",
    "database": "..."
}


# Calculate the datetime for 24 hours ago
now = datetime.datetime.now()
last_24h = now - datetime.timedelta(hours=24)

# Define the SQL query to fetch data from the database
sql_query = f"SELECT * FROM poolStats WHERE date >= '{last_24h}' ORDER BY `poolStats`.`date` ASC"

@app.route("/")
def index():
    # Connect to the database
    conn = mysql.connector.connect(**db_params)

    # Fetch data from the database into a Pandas DataFrame
    df = pd.read_sql(sql_query, conn)

    # Create a Plotly figure with a line chart
    fig = px.line(df, x="date", y=["sport", "family", "small", "ice"])

    # Render the HTML template with the Plotly chart
    return render_template("index.html", plot=fig.to_html(full_html=False))

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)