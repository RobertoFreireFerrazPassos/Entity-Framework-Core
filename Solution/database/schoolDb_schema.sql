--  Department table.
CREATE TABLE IF NOT EXISTS Department (
    department_id serial PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    budget NUMERIC NOT NULL,
    start_date TIMESTAMP NOT NULL,
    administrator int NULL
);

--  Person table.

CREATE TABLE IF NOT EXISTS Person (
    person_id serial PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    hire_date TIMESTAMP NULL,
    enrollment_date TIMESTAMP NULL,
    discriminator VARCHAR(50) NOT NULL
);

--  Course table.

CREATE TABLE IF NOT EXISTS Course (
    course_id serial PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    credits int NOT NULL,
    department_id int NOT NULL,
    FOREIGN KEY (department_id)
        REFERENCES Department (department_id)
);

--  OnsiteCourse table.

CREATE TABLE IF NOT EXISTS OnsiteCourse (
    course_id serial PRIMARY KEY,
    location VARCHAR(50) NOT NULL,
    days VARCHAR(50) NOT NULL,
    time time NOT NULL,
    FOREIGN KEY (course_id)
        REFERENCES Course (course_id)
);

--  OnlineCourse table.

CREATE TABLE IF NOT EXISTS OnlineCourse (
    course_id serial PRIMARY KEY,
    url VARCHAR(100) NOT NULL,
    FOREIGN KEY (course_id)
        REFERENCES Course (course_id)
);

--  StudentGrade table.

CREATE TABLE IF NOT EXISTS StudentGrade (
    course_id int NOT NULL,
    student_id int NOT NULL,
    grade  decimal (3, 2) NULL,
    PRIMARY KEY (course_id, student_id),
    FOREIGN KEY (student_id)
        REFERENCES Person (person_id),
    FOREIGN KEY (course_id)
        REFERENCES Course (course_id)
);

--  CourseInstructor table.

CREATE TABLE IF NOT EXISTS CourseInstructor (
    course_id int NOT NULL,
    instructor_id int NOT NULL,
    PRIMARY KEY (course_id, instructor_id),    
    FOREIGN KEY (course_id)
        REFERENCES Course (course_id),
    FOREIGN KEY (instructor_id)
        REFERENCES Person (person_id)
);

--  OfficeAssignment table.

CREATE TABLE IF NOT EXISTS OfficeAssignment (
    instructor_id serial PRIMARY KEY,
    location VARCHAR(50) NOT NULL,
    time TIMESTAMP  NULL,
    FOREIGN KEY (instructor_id)
        REFERENCES Person (person_id)
);


