CREATE TABLE stream (
    stream_id INT AUTO_INCREMENT PRIMARY KEY,
    stream_name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(200)
);

INSERT INTO stream
(
    stream_name,
    description
)
VALUES
(
    'Computer Science and Engineering',
    'Computer Science and Engineering'
),
(
    'Electronics and Communication Engineering',
    'Electronics and Communication Engineering'
),
(
    'Electrical and Electronics Engineering',
    'Electrical and Electronics Engineering'
),
(
    'Mechanical Engineering',
    'Mechanical Engineering'
),
(
    'Civil Engineering',
    'Civil Engineering'
);

SELECT * FROM stream;