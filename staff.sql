CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    designation VARCHAR(100),
    department VARCHAR(100),

    stream_id INT NOT NULL,

    CONSTRAINT fk_staff_stream
        FOREIGN KEY (stream_id)
        REFERENCES stream(stream_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

INSERT INTO staff
(
    name,
    email,
    phone,
    designation,
    department,
    stream_id
)
VALUES
(
    'Dr. Ravi Kumar',
    'ravi@gmail.com',
    '9000000001',
    'Assistant Professor',
    'Computer Science and Engineering',
    1
),
(
    'Dr. Priya Sharma',
    'priya@gmail.com',
    '9000000002',
    'Associate Professor',
    'Computer Science and Engineering',
    1
),
(
    'Dr. Arun Kumar',
    'arun@gmail.com',
    '9000000003',
    'Assistant Professor',
    'Electronics and Communication Engineering',
    2
);

select * from staff;