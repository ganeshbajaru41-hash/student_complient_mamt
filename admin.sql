CREATE TABLE admin (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15),
    designation VARCHAR(100)
);


INSERT INTO admin
(
    name,
    email,
    phone,
    designation
)
VALUES
(
    'System Administrator',
    'admin@gmail.com',
    '9000000010',
    'Administrator'
),
(
    'Complaint Manager',
    'manager@gmail.com',
    '9000000011',
    'Complaint Manager'
);


select * from admin;