# README

# _Local Business lookup API_

#### _Ruby on Rails, Week 4 Independent project build your own API, 07/19/2017_

#### By _**Chitroopa Manikkavasagam**_

## Description

Local Business lookup API returns details about Local Business

Sample JSON output

```
{
    "local_business": {
        "id": 13,
        "name": "Walsh LLC",
        "street": "4715 Block Lakes",
        "city": "North Quincytown",
        "state": "SC",
        "country": "USA",
        "zipcode": 86170,
        "phone_number": "581.330.0249",
        "business_type": "public",
        "current_status": "Active",
        "key_peoples": "Mrs. Harley Reilly,Regional Accountability Executive",
        "founder": "Uriel Johns",
        "founded": "2015-03-12",
        "line_of_business": "teacher",
        "number_of_employees": 2779,
        "website": "http://marks.net/eliezer_homenick",
        "created_at": "2017-07-21T17:13:45.538Z",
        "updated_at": "2017-07-21T17:13:45.538Z"
    }
}
```

### REST routes


| Request| Path | Params |          comments                |
|--------|------|--------|----------------------------------|
| GET | http://localhost:3000//api/v1/local_business |  NA | returns all local business information |
| GET | http://localhost:3000//api/v1/local_business/{local_business ID} |   local business id | returns local business information by ID |
| GET | http://localhost:3000//api/v1/local_business?city={city} |  city = town | returns local business with search city name |
| GET | http://localhost:3000//api/v1/local_business?name={business name} |  name = Zboncak | returns local business with search business name |
| GET | http://localhost:3000//api/v1/local_business?city={city} |  city = town | returns local business with search city name |
| GET | http://localhost:3000//api/v1/local_business?stateAbbr={state} |  stateAbbr = wa | returns local business with search state name |
| GET | http://localhost:3000//api/v1/local_business?country={country} |  country = US | returns local business with search country name |
| GET | http://localhost:3000//api/v1/local_business?zip={zipcode} |  zip = 29688 | returns local business with search zipcode |
| POST | http://localhost:3000/api/v1/local_business | name,street,city,state,country,zipcode,phone_number | create a new local business |
| PATCH | http://localhost:3000/api/v1/local_business{local_business ID}| name,street,city,state,country,zipcode,phone_number,business_type, current_status, key_peoples, founded, founder, line_of_business, number_of_employees, website | update local business information|
| DELETE | http://localhost:3000/api/v1/local_business{local_business ID} | delete local business by ID |


## Installation
------------

```
$ git clone https://github.com/Chitroopa/Local-business-lookup-API
$ cd Local-business-lookup-API
```

Install required gems:
```
$ bundle install
```

Start postgres:
```
$ psql
```

Create databases:
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Start the webserver:
```
$ rails s
```

Navigate to `localhost:3000` in browser.


## Known Bugs

_NA_

## Technologies Used

_Ruby on Rails_

### License

*MIT*

Copyright (c) 2017 **_Chitroopa Manikkavasagam_**
