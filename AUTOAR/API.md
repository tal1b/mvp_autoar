API Specification
Base URL

http://localhost:5000

Endpoint: /register

Method: POST
Purpose: Register a new user

Request Body:

{
  "username": "user1",
  "password": "password123"
}


Response:

{
  "message": "User registered successfully"
}


Error Codes:

400: Invalid input

409: User already exists

Endpoint: /login

Method: POST
Purpose: Authenticate user

Request Body:

{
  "username": "user1",
  "password": "password123"
}


Response:

{
  "message": "Login successful"
}


Error Codes:

401: Invalid credentials

Endpoint: /employees

Method: GET
Purpose: Retrieve list of employees

Response:

{
  "employees": []
}

Endpoint: /tasks

Method: POST
Purpose: Create a new task

Request Body:

{
  "description": "Prepare report",
  "employee_id": 1
}


Response:

{
  "message": "Task created"
}

Authentication Rules

User must be authenticated to access protected endpoints.

Session-based authentication is used in MVP.