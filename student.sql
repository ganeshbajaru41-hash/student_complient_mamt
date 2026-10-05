CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,

    academic_year_id INT NOT NULL,

    roll_number VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15),

    CONSTRAINT fk_student_academic_year
        FOREIGN KEY (academic_year_id)
        REFERENCES academic_year(academic_year_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

INSERT INTO student
(
    academic_year_id,
    roll_number,
    name,
    department,
    email,
    phone
)
VALUES
(
    3,
    '24761A05G1',
    'Student One',
    'Computer Science and Engineering',
    'student1@gmail.com',
    '9876543210'
),
(
    3,
    '24761A05G2',
    'Student Two',
    'Computer Science and Engineering',
    'student2@gmail.com',
    '9876543211'
),
(
    3,
    '24761A05I4',
    'Student Three',
    'Computer Science and Engineering',
    'student3@gmail.com',
    '9876543212'
);

select * from student;