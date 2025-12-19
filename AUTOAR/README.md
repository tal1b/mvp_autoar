AutoAR
Overview

AutoAR is a web-based Human Resource Management MVP designed to automate and simplify basic employee administration processes.

The product solves the following problem:
Small teams and organizations often manage employees, shifts, tasks, and payroll manually using spreadsheets or disconnected tools, which leads to errors, low transparency, and inefficiency.

The target user group includes:
Small businesses, startups, and internal HR departments that require a lightweight, centralized system for workforce management.

Tech Stack

List of main technologies:

Front end:
HTML5, CSS3, Jinja2 Templates

Back end:
Python, Flask

Database:
SQLite

Other tools:
Werkzeug (authentication utilities), Flask session management

Project Structure

Short explanation of main folders:

/AUTOAR
 ├── app.py              # Main Flask application
 ├── templates/          # HTML templates (UI pages)
 ├── static/             # CSS styles and static assets
 ├── autoar.db           # SQLite database
 ├── .env.example        # Example environment variables
 └── docs/               # Project documentation files

How to Run the Project

System requirements:

Python 3.9 or higher

pip package manager

Virtual environment tool (recommended)

Installation steps:

Clone the repository
git clone https://github.com/tal1b/autoar.git

Create and activate a virtual environment
python -m venv venv
source venv/bin/activate (Linux/Mac) or venv\Scripts\activate (Windows)

Install dependencies
pip install flask

Start command:

python app.py


The application will be available at:
http://localhost:5000

How to Run Tests

Test command:

python -m unittest
Additional Documents

Links to product documents:

[PRD](https://C:\Users\Tamerlan\Desktop\AUTOAR\prd.md)

[User Stories](https://C:\Users\Tamerlan\Desktop\AUTOAR\User_Stories.md)

[Architecture](https://)

[API Description](https://)
