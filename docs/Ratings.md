## Ratings

### Database
	
#### Ratings
```ratings_driver
	rt_id	INT PRIMARY
	rt_created DATE
	rt_modified DATE
	rt_id_creator INT FK(users) //User who created the rating
	rt_id_user INT FK(users)    //User for whom the rating is for
	rt_id_questions INT FK(ratings_questions)
	rt_id_ride INT FK(rides)
```

#### Ratings Questions
```ratings_questions
	rq_id INT PRIMARY
	rq_q1 DOUBLE RANGE(0-5)
	rq_q2 DOUBLE RANGE(0-5)
	rq_q3 DOUBLE RANGE(0-5)
	rq_average SQL AVERAGE FUNCTION
```

### GET `/users/:id/ratings`

Get the ratings for a passenger or a driver. Does not require authentication

#### Request

Parameter | Description    | Required
----------|----------------|-----------
`:id`     | The user id.   | Yes

Rating ID: `/users/:id/ratings/:id`

#### Response

```json
{
	"ratings": [
	{
		"id": 1,
		"q1_rating": 4.5,
		"q2_rating": 3,
		"q3_rating": 5,
		"q_average": 3.75
	},
	{ ... },
	{ ... }
		
	]
}
```

### GET `/users/:userid/ratings/:ratingid`

Get a specific rating for a passenger or driver. Does not require authentication

#### Request

Parameter  | Description    | Required
-----------|----------------|-----------
`:userid`  | The user's id. | Yes
`:ratingid`| The rating id. | Yes

#### Response

```json
{
	"ratings": [
	{
		"id": 1,
		"q1_rating": 4.5,
		"q2_rating": 3,
		"q3_rating": 5,
		"q_average": 3.75
	},
	{ ... },
	{ ... }
		
	]
}
```

### POST `/ratings`

Creates a new rating object. Requires authentication

#### Request

Parameter       | Description           | Required
----------------|-----------------------|-----------
`:ride_id`      | The ride's ID.        | Yes
`:creator_id`   | The creator's id      | Yes
`:question_id`  | Question ID           | Yes
`:designator_id`| Who the Rating is for | Yes

#### Response

```json
{
	"ratings": [
	{
		"id": 1,
		"q1_rating": 4.5,
		"q2_rating": 3,
		"q3_rating": 5,
		"q_average": 3.75
	}	
	]
}
```

### POST `/ratings/questions`

Creates a new question object to be inserted into database

#### Request

Parameter | Description   | Required
----------|---------------|-----------
`:q1`     | Question 1    | Yes
`:q2`     | Question 2    | Yes
`:q3`     | Question 3    | Yes

#### Response

```json
{
	
	"questions": {
		"id" : 1
	}
}
```
