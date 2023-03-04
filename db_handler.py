import mysql.connector
from datetime import datetime
import json

def insert_stats(date, people_sport, people_family, people_small, people_ice):
    # Load the database login details from the config file
    with open('db_config.json', 'r') as f:
        config = json.load(f)

    # Connect to the database
    mydb = mysql.connector.connect(**config)

    # Create a cursor object
    mycursor = mydb.cursor()

    # Convert the date to a string in the format YYYY-MM-DD HH:MM:SS
    date_str = date.strftime('%Y-%m-%d %H:%M:%S')

    # SQL query to insert data into the table
    sql = "INSERT INTO poolStats (date, sport, family, small, ice) VALUES (%s, %s, %s, %s, %s)"
    values = (date_str, people_sport, people_family, people_small, people_ice)

    # Execute the query
    mycursor.execute(sql, values)

    # Commit the changes
    mydb.commit()

    # Close the database connection
    mydb.close()

if __name__ == "__main__":
    date = datetime(2023, 3, 4, 10, 30, 0)
    insert_stats(date, 10, 11, 5, 1)