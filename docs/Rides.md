## Rides

### GET `/rides`

Get a list of the User's rides, active or not. Requires authentication.

#### Request

No parameters required.

#### Response

```json
{
  "rides": [
    {
      "id": 1,
      "requested_at": 2012-04-23T18:25:43.511Z,
      "replied_at": 2012-04-23T18:25:43.511Z,
      "requested_for": 2012-04-23T18:25:43.511Z,
      "pickup_at": 2012-04-23T18:25:43.511Z,
      "dropoff_at": 2012-04-23T18:25:43.511Z,
	  "total_passengers" : 1 
      "pickup_location": {
        "id": 1,
        "name": "Donnelly Hall",
        "coordinates": [ 41.717608, -73.931142 ],
        "google_maps_url": "https://goo.gl/KmmdBs"
      },
      "dropoff_location": {
        "id": 2,
        "name": "Union Square Tavern",
        "coordinates": [ 41.717608, -73.931142 ],
        "google_maps_url": "https://goo.gl/KmmdBs"
      },
      "passenger": {
        "id" : 1,
        "email": "djm@marist.edu",
        "phone_number": "18455555555",
        "first_name": "Dennis",
        "last_name": "Murray",
        "role": "passenger"
      },
      "driver": {
        "id" : 2,
        "email": "joe@foo.com",
        "phone_number": "18455555555",
        "first_name": "Joe",
        "last_name": "Shmoe",
        "role": "driver"
      }
    },
    { ... },
    { ... }
  ]
}
```

### GET `/rides/:id`

### POST `/rides`

### PATCH `/rides/:id`

### DELETE `/rides/:id`
