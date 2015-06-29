## Ratings

### Database
	
#### Ratings Driver
```ratings_driver
	rd_id	INT PRIMARY
	rd_created DATE
	rd_modified DATE
	rd_id_creator INT FK(users) //User who created the rating
	rd_id_user INT FK(users)    //User for whom the rating is for
	rd_id_questions INT FK(ratings_questions)
```

#### Ratings Questions
```ratings_questions
	rq_id INT PRIMARY
	rq_q1 DOUBLE RANGE(0-5)
	rq_q2 DOUBLE RANGE(0-5)
	rq_q3 DOUBLE RANGE(0-5)
	rq_average SQL AVERAGE FUNCTION
```

### GET `/ratings`

Get the ratings for a passenger or a driver. Does not require authentication

#### Request

User ID for whom the "Rating" is for: `/ratings?user_id={USER_ID}`

OR

Rating ID: `/ratings?rating_id={RATING_ID}`

#### Response

```json
{
	"ratings": [
	{
		"id": 1,
		"type": {"driver"/"passenger""},
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

