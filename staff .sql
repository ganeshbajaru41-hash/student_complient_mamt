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