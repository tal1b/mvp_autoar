Product Requirements Document (PRD)
1. Product Goal

The main objective of AutoAR is to provide a lightweight web-based system for managing employees, work shifts, tasks, and payroll within small organizations.

2. Problem Statement

Small companies often rely on manual tools such as spreadsheets to manage HR processes. This leads to data inconsistency, lack of transparency, and inefficient workflows. There is a need for a centralized and simple system that automates core HR operations.

3. Target Audience

Small businesses

Startups

Internal HR teams

Team managers

4. User Roles

Administrator (HR manager)

Employee

5. User Scenarios

An administrator creates and manages employee accounts.

An administrator assigns shifts and tasks to employees.

An employee logs in to view assigned tasks, shifts, and salary information.

An administrator tracks payroll data.

6. Functional Requirements

The system must:

Allow users to register and authenticate.

Allow administrators to create, update, and delete employee records.

Allow administrators to manage shifts.

Allow administrators to assign tasks.

Display payroll information.

Provide a personal dashboard for each user.

7. Non-Functional Requirements

The system must satisfy:

Performance:

Page load time under 2 seconds for standard operations.

Reliability:

Data must persist between sessions.

System must handle concurrent users without data loss.

Security:

Passwords must be stored in hashed form.

Unauthorized users must not access protected resources.

Usability:

Interface must be simple and intuitive.

Navigation must be clear for non-technical users.

Scalability:

Architecture must allow migration to a more powerful database in future versions.

8. MVP Scope
Features that must enter version 0.1:

User authentication

Employee management

Task management

Shift management

Payroll view

Dashboard

9. Out-of-Scope (Backlog)
Features that do not enter MVP:

Role-based access control granularity

Notifications

Reporting and analytics

Mobile application

External integrations

10. Acceptance Criteria

User Authentication:

Users can register with unique credentials.

Users can log in and log out successfully.

Employee Management:

Administrator can add, edit, and delete employees.

Changes are saved in the database.

Task Management:

Tasks can be created and assigned.

Employees can view assigned tasks.

Shift Management:

Shifts can be assigned to employees.

Employees can view their shifts.

Payroll:

Salary data is displayed correctly for each employee.