CREATE TABLE complaint (
    complaint_id INT AUTO_INCREMENT PRIMARY KEY,

    academic_year_id INT NOT NULL,
    student_id INT NOT NULL,

    complaint_type VARCHAR(100) NOT NULL,
    subject VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,

    image_name VARCHAR(255),
    image_path VARCHAR(500),
    image_type VARCHAR(50),

    created_date DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_complaint_academic_year
        FOREIGN KEY (academic_year_id)
        REFERENCES academic_year(academic_year_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_complaint_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

INSERT INTO complaint
(
    academic_year_id,
    student_id,
    complaint_type,
    subject,
    description,
    image_name,
    image_path,
    image_type
)
VALUES
(
    3,
    1,
    'Infrastructure',
    'Classroom Projector Not Working',
    'The projector in the classroom is not working properly.',
    'projector.jpg',
    '/uploads/complaints/projector.jpg',
    'image/jpeg'
),
(
    3,
    2,
    'Transport',
    'College Bus Delay',
    'The college bus is frequently arriving late to the college.',
    'bus.jpg',
    '/uploads/complaints/bus.jpg',
    'image/jpeg'
),
(
    3,
    3,
    'Hostel',
    'Water Supply Problem',
    'There is a problem with the water supply in the hostel.',
    NULL,
    NULL,
    NULL
),
(
    3,
    1,
    'Academic',
    'Internal Marks Not Updated',
    'The internal examination marks have not been updated in the student portal.',
    NULL,
    NULL,
    NULL
),
(
    3,
    2,
    'Infrastructure',
    'Classroom Fan Problem',
    'The ceiling fan in the classroom is not working.',
    'fan.jpg',
    '/uploads/complaints/fan.jpg',
    'image/jpeg'
);

select * from complaint;