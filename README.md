# muber-api

The API for [Muber](http://muber.io).

## Documentation

All requests are made to the endpoint `http://api.muber.io/v1`.

### Authentication

All authentication is made over OAuth.

### Users


#### GET `/users/:id`

Get a User by their ID. Requires authentication.

##### Request

Parameter | Description    | Required
----------|----------------|-----------
`:id`     | The user's ID. | Yes

##### Response

```json
{
  "user": {
    "id" : 1,
    "email": "djm@marist.edu",
    "phone_number": "18455555555",
    "first_name": "Dennis",
    "last_name": "Murray",
    "role": "passenger"
  }
}
```

#### POST `/users`

Create a new User. Does not require authentication.

##### Request

Parameter                     | Type                             | Description                            | Required
------------------------------|----------------------------------|----------------------------------------|-------------
`user[email]`                 | String                           | The User's email address.              | Yes
`user[phone_number]`          | String                           | The User's phone number                | Yes
`user[first_name]`            | String                           | The User's first name.                 | Yes
`user[last_name]`             | String                           | The User's last name.                  | No
`user[role]`                  | String (`passenger` or `driver`) | The User's role (passenger or driver). | Yes
`user[password]`              | String                           | The User's password.                   | Yes
`user[password_confirmation]` | String                           | The User's password, confirmed.        | Yes

##### Response

```json
{
  "user": {
    "id" : 1,
    "email": "djm@marist.edu",
    "phone_number": "18455555555",
    "first_name": "Dennis",
    "last_name": "Murray",
    "role": "passenger"
  }
}
```

#### PATCH `/users`

#### DELETE `/users`
