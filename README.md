# Student Management System

A simple PHP + MySQL student management system (students, courses, enrollments) using a lightweight MVC structure without a framework.

## Structure

```
config/         Configuration and DB connection settings
controllers/    Request handlers (also act as entry points, e.g. controllers/StudentController.php)
models/         Database-backed data classes
views/          HTML templates per resource
includes/       Shared layout partials (header, footer, navbar, sidebar)
helpers/        Small utility functions (helper, validation, auth)
uploads/        User-uploaded files
assets/         CSS, JS, images
```

## Setup

1. Create the database and tables:
   ```
   mysql -u root -p < config/database.sql
   ```
2. Update `config/database.php` with your DB credentials if different from defaults.
3. Update `BASE_URL` in `config/config.php` to match where the project is served from.
4. Serve the project with Apache/XAMPP, pointing to this folder.
5. Log in at `login.php` with the seeded admin account:
   - username: `admin`
   - password: `admin123`

## Notes

- There is no front controller/router; each `controllers/*Controller.php` file is a direct entry point and dispatches based on `?action=`.
- Passwords are hashed with `password_hash()` / verified with `password_verify()`.
- All user-facing output is escaped via the `e()` helper to prevent XSS.
