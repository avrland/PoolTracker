import requests
import json

response = requests.get('https://miejskoaktywni.pl/api/activities_table_items')

json_data = json.loads(response.text)

for x in json_data:
    print(x.get('title', None))
    string = x.get('content', None)
    print(string)
    start_index = string.find(':') + 2
    end_index = string.find(' ', start_index)
    variable = string[start_index:end_index]
    variable = int(variable)
    print(variable)