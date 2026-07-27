Table: students
------------------------
id
uuid
admission_no
roll_number
first_name
last_name
gender
dob
email
phone
guardian_name
guardian_phone
address
class_id
section_id
photo
status
admission_date
created_at
updated_at
deleted_at


Table: users
------------------------
id
uuid
first_name
last_name
email
phone
password
address
photo
role                // admin, management
status             //1=> active,0=>pending
invitation_set_at
invitation_accepted_at
created_at
updated_at
deleted_at


Table: teachers
------------------------
id
uuid
employee_id
first_name
last_name
gender
dob
email
phone
address
qualification
experience
joining_date
photo
status
created_at
updated_at
deleted_at


Table: classes
------------------------
id
uuid
class_name
description
status
created_at
updated_at
deleted_at


Table: sections
------------------------
id
uuid
class_id
section_name
class_teacher_id
status
created_at
updated_at
deleted_at


Table: subjects
------------------------
id
uuid
subject_name
subject_code
status
created_at
updated_at
deleted_at


Table: attendance
------------------------
id
uuid
student_id
attendance_date
status
remarks
created_at
updated_at
deleted_at


Table: marks
------------------------
id
uuid
student_id
subject_id
exam_id
marks_obtained
maximum_marks
grade
remarks
created_at
updated_at
deleted_at


Table: exams
------------------------
id
uuid
exam_name
start_date
end_date
academic_year
status
created_at
updated_at
deleted_at

Table: teacher_subjects
------------------------
id
uuid
teacher_id
subject_id
class_id
section_id
academic_year
status
created_at
updated_at
deleted_at
