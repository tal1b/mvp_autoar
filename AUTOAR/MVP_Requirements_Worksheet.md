# MVP Requirements Worksheet
## Employee Management System

---

## 1. Core Problem

**What is the single biggest pain point?**

Small and medium-sized businesses struggle with inefficient employee management processes. Managers waste significant time manually tracking employee tasks, schedules, salaries, and deadlines using spreadsheets, emails, and paper documents. This leads to:
- Lost or forgotten tasks and deadlines
- Difficulty tracking employee workload and performance
- Time-consuming manual calculations for salaries and shifts
- Lack of centralized information about employees
- Poor communication between managers and employees about assignments

**Why is solving this problem valuable?**

An automated employee management system saves managers 5-10 hours per week by centralizing all employee information, automating task assignment and tracking, and providing real-time visibility into employee schedules and workloads. For employees, it provides clear visibility into their tasks, deadlines, and schedules, reducing confusion and missed deadlines. This directly improves productivity, reduces administrative overhead, and enables better resource planning for growing businesses.

---

## 2. Target Users (3-5 sentences)

**Who are they? (age, role, habits)**

Our primary target users are:
- **Managers/Owners** (ages 30-50): Small business owners, team leads, and department managers who currently manage 5-50 employees. They are comfortable with basic web applications, spend 2-3 hours daily on administrative tasks, and need quick access to employee information. They typically work from desktop computers during business hours.

- **Employees** (ages 22-45): Full-time and part-time workers who need to track their assigned tasks, deadlines, work schedules, and salary information. They access the system from both desktop and mobile devices, prefer simple interfaces, and need quick access to their personal information.

**Why are they the best early testers?**

These users experience the pain point daily and are motivated to find a solution. Small businesses are more flexible in adopting new tools compared to large enterprises. They provide immediate, actionable feedback and can validate whether the core features solve their real problems. Their relatively small team size makes it easy to test the system end-to-end and iterate quickly based on feedback.

---

## 3. Main Goal of the MVP

**What action or outcome will prove your idea works?**

The MVP must demonstrate that managers can successfully:
1. Register and create accounts for themselves and their employees
2. Assign tasks to employees with deadlines
3. Schedule employee shifts
4. Track employee salaries
5. View all employee information in one place

And employees can:
1. View their assigned tasks and deadlines
2. Update task status (not started, in progress, completed)
3. View their work schedule
4. View their salary information

**Success metrics:**
- Managers can complete the full workflow (register → assign task → view employee) in under 5 minutes
- Employees can view and update their tasks without confusion
- Zero critical bugs that prevent core functionality
- At least 80% of test users report the system saves them time compared to their current method

---

## 4. Must-Have Features (5-10 items)

1. **User Registration & Authentication**
   - Users can register with name, username, password, and role (Manager or Employee)
   - Secure login/logout functionality
   - Session management based on user ID

2. **Role-Based Access Control**
   - Managers can access all management features
   - Employees can only access their own information

3. **Employee Directory (Manager View)**
   - View list of all employees with basic information (name, position, department, contact info)
   - Search and filter employees by name, position, or department

4. **Task Management**
   - Managers can create tasks and assign them to employees
   - Set deadlines for tasks
   - Track task status (not started, in progress, completed)
   - Employees can view their tasks and update status
   - Filter tasks by status and employee

5. **Shift Scheduling (Manager)**
   - Managers can create shifts for employees
   - Set shift date, start time, and end time
   - Automatic calculation of work hours
   - Employees can view their scheduled shifts

6. **Salary Management (Manager)**
   - Managers can assign salaries to employees
   - Support for fixed salary or hourly rate
   - Set payment periods
   - Employees can view their salary information

7. **Dashboard/Statistics (Manager)**
   - Overview of total employees, tasks, and salaries
   - Statistics by department and task status

8. **Data Export**
   - Export employee, task, salary, and shift data to CSV/Excel

---

## 5. Out-of-Scope Features (2–4 items)

1. **Mobile Application**
   - Native iOS/Android apps are out of scope for MVP
   - Web application is responsive and works on mobile browsers

2. **Advanced Reporting & Analytics**
   - Complex charts, graphs, and predictive analytics
   - Custom report generation
   - Historical trend analysis

3. **Communication Features**
   - In-app messaging or chat
   - Email notifications
   - Push notifications

4. **Time Tracking & Attendance**
   - Automatic time clock/punch in-out
   - GPS location tracking
   - Biometric authentication

5. **Integration with External Systems**
   - Integration with payroll systems
   - Integration with calendar applications (Google Calendar, Outlook)
   - API for third-party integrations

---

## 6. User Flow (Step-by-step)

### Manager Flow:

1. **Registration/Login**
   - Manager opens web application
   - Clicks "Register" and fills in name, username, password, selects "Manager" role
   - System creates account and redirects to login
   - Manager logs in with username and password

2. **View Dashboard**
   - Manager sees dashboard with statistics (total employees, tasks, salaries)
   - Overview of employees by department and tasks by status

3. **View Employees**
   - Manager clicks "Сотрудники" (Employees) in navigation
   - Sees list of all employees with their information
   - Can search or filter by department

4. **Create Task**
   - Manager clicks "Задачи" (Tasks) → "Создать задачу" (Create Task)
   - Fills in task title, description, selects employee, sets deadline, and status
   - Saves task

5. **Assign Shift**
   - Manager clicks "Смены" (Shifts) → "Добавить смену" (Add Shift)
   - Selects employee, date, start time, and end time
   - System calculates hours automatically
   - Saves shift

6. **Assign Salary**
   - Manager clicks "Зарплаты" (Salaries) → "Добавить зарплату" (Add Salary)
   - Selects employee, salary type (fixed/hourly), amount, and period
   - Saves salary information

7. **Export Data**
   - Manager clicks export button (CSV or Excel)
   - Downloads file with selected data

### Employee Flow:

1. **Registration/Login**
   - Employee opens web application
   - Clicks "Register" and fills in information, selects "Employee" role
   - System creates account and employee record
   - Employee logs in with username and password

2. **View Tasks**
   - Employee clicks "Мои задачи" (My Tasks) in navigation
   - Sees list of all assigned tasks with deadlines and status
   - Can filter by status

3. **Update Task Status**
   - Employee clicks "Редактировать" (Edit) on a task
   - Changes status from "not started" to "in progress" or "completed"
   - Saves changes

4. **View Schedule**
   - Employee clicks "Мои смены" (My Shifts)
   - Sees all scheduled shifts with dates and times

5. **View Salary**
   - Employee clicks "Мои зарплаты" (My Salaries)
   - Sees salary information and payment history

---

## 7. Technical Requirements

**Platform:** Web Application (Responsive)

**Tech Stack:**
- **Backend:** Python 3.7+, Flask (web framework)
- **Database:** SQLite (lightweight, file-based database)
- **Frontend:** HTML5, CSS3, JavaScript (vanilla)
- **Authentication:** Flask sessions with password hashing (Werkzeug)
- **Data Export:** CSV (built-in), Excel (openpyxl library)

**System Requirements:**
- Python 3.7 or higher
- Modern web browser (Chrome, Firefox, Safari, Edge)
- Internet connection for initial setup (dependencies)
- 50MB disk space for application and database

**Deployment:**
- Can run locally on any operating system (Windows, macOS, Linux)
- Can be deployed to cloud platforms (Heroku, AWS, DigitalOcean)
- Database is file-based (SQLite), no separate database server required

**Security:**
- Password hashing using Werkzeug security
- Session-based authentication
- SQL injection protection via parameterized queries
- Role-based access control

**Scalability Considerations:**
- SQLite suitable for up to 100-200 concurrent users
- For larger scale, can migrate to PostgreSQL or MySQL
- Stateless design allows horizontal scaling

---

## MVP Success Criteria

✅ **Functional Requirements Met:**
- All must-have features implemented and working
- No critical bugs preventing core functionality
- User registration and authentication working correctly
- Role-based access control functioning properly

✅ **Usability Requirements Met:**
- Intuitive navigation and clear user interface
- Users can complete primary workflows without training
- Responsive design works on desktop and mobile browsers
- Error messages are clear and helpful

✅ **Quality Requirements Met:**
- Clean, professional design
- Consistent visual styling
- Fast page load times (< 2 seconds)
- Data validation prevents invalid inputs

✅ **Testing Requirements Met:**
- Tested with at least 2-3 managers and 3-5 employees
- Feedback collected and documented
- Core workflows validated end-to-end

---

## Notes

This MVP focuses on solving the core problem of centralized employee management for small businesses. By keeping the feature set minimal and focused, we can quickly validate whether the solution addresses real user needs before investing in advanced features. The web-based approach ensures easy access and deployment, while SQLite provides a simple database solution that can be upgraded later if needed.




