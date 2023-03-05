import requests
import json
from db_handler import insert_stats
from datetime import datetime
import schedule
import time

def single_api_request():
    response = requests.get('https://miejskoaktywni.pl/api/activities_table_items')
    json_data = json.loads(response.text)
    single_scrap = {}
    for x in json_data:
        title = x.get('title', None)
        string = x.get('content', None)
        start_index = string.find(':') + 2
        end_index = string.find(' ', start_index)
        variable = string[start_index:end_index]
        variable = int(variable)
        if "sportowa" in title.lower():
            single_scrap['sport'] = variable
        elif "rodzinna" in title.lower():
            single_scrap['family'] = variable
        elif "kameralna" in title.lower():
            single_scrap['small'] = variable
        elif "lodowisko" in title.lower():
            single_scrap['ice'] = variable
    return single_scrap

def push_to_db():
    current_time = datetime.now()
    single_scrap_content = single_api_request()
    print(str(single_scrap_content))
    sport, family, small, ice = single_scrap_content['sport'], single_scrap_content['family'], single_scrap_content['small'], single_scrap_content['ice']
    insert_stats(current_time, people_sport=sport, people_family=family, people_small=small, people_ice=ice)


schedule.every().hour.at(":00").do(push_to_db())
schedule.every().hour.at(":30").do(push_to_db())

while True:
    schedule.run_pending()
    time.sleep(1)