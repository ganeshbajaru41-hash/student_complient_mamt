USE student_complaint_db;

CREATE TABLE registered_complaints (

    registered_complaint_id INT AUTO_INCREMENT PRIMARY KEY,

    complaint_id INT NOT NULL,
    student_id INT NOT NULL,
    admin_id INT NOT NULL,
    stream_id INT NOT NULL,
    assigned_staff_id INT NULL,

    registered_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    assigned_date DATETIME NULL,

    priority VARCHAR(20) DEFAULT 'MEDIUM',

    registration_status VARCHAR(30) DEFAULT 'REGISTERED',

    staff_remarks TEXT NULL,

    resolution TEXT NULL,
    resolved_date DATETIME NULL,

    verification_status VARCHAR(30) DEFAULT 'PENDING',
    verification_date DATETIME NULL,

    CONSTRAINT fk_registered_complaint
        FOREIGN KEY (complaint_id)
        REFERENCES complaint(complaint_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_registered_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_registered_admin
        FOREIGN KEY (admin_id)
        REFERENCES admin(admin_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_registered_stream
        FOREIGN KEY (stream_id)
        REFERENCES stream(stream_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_registered_staff
        FOREIGN KEY (assigned_staff_id)
        REFERENCES staff(staff_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

INSERT INTO registered_complaints
(
    complaint_id,
    student_id,
    admin_id,
    stream_id,
    assigned_staff_id,
    registered_date,
    assigned_date,
    priority,
    registration_status,
    staff_remarks,
    resolution,
    resolved_date,
    verification_status,
    verification_date
)
VALUES

(
    1,
    1,
    1,
    1,
    1,
    NOW(),
    NOW(),
    'HIGH',
    'ASSIGNED',
    'Complaint assigned to infrastructure staff.',
    NULL,
    NULL,
    'PENDING',
    NULL
),

(
    2,
    2,
    1,
    1,
    2,
    NOW(),
    NOW(),
    'MEDIUM',
    'IN_PROGRESS',
    'Transport complaint is under investigation.',
    NULL,
    NULL,
    'PENDING',
    NULL
),

(
    3,
    3,
    2,
    1,
    1,
    NOW(),
    NOW(),
    'HIGH',
    'RESOLVED',
    'Water supply issue inspected and corrected.',
    'Water supply has been restored.',
    NOW(),
    'VERIFIED',
    NOW()
),

(
    4,
    1,
    1,
    1,
    NULL,
    NOW(),
    NULL,
    'MEDIUM',
    'REGISTERED',
    NULL,
    NULL,
    NULL,
    'PENDING',
    NULL
),

(
    5,
    2,
    2,
    1,
    2,
    NOW(),
    NOW(),
    'LOW',
    'ASSIGNED',
    'Complaint assigned to maintenance staff.',
    NULL,
    NULL,
    'PENDING',
    NULL
);

SELECT * FROM registered_complaints;