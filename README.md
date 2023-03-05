# PoolTracker
Pool occupancy stats scrapper. This script puts the number of people present at the pool with datetime to database. 



### Data fetched from api
```json
[
    {
        "title": "Pływalnia Sportowa",
        "content": "Aktualnie na pływalni: 96 osób<br />Maksymalnie: 105 osób",
        "type": "pływalnia sportowa",
        "id": 1,
        "isActive": true,
        "createdAt": "2022-04-29T01:27:21+02:00",
        "updateAt": "2022-04-29T01:27:21+02:00",
        "active": true
    }
]
```

### Data inserted to db. 
```csv
"date","sport","family","small","ice","guid"
"2023-03-05 07:30:00","86","81","18","0","041b8386-bb26-11ed-b3f1-960000b5fbdb"
"2023-03-05 08:00:00","87","70","18","0","041b85d4-bb26-11ed-b3f1-960000b5fbdb"
"2023-03-05 08:30:00","99","88","23","0","0ffd139d-5b4e-4fcd-a8b6-3cfef862ad62"
```
