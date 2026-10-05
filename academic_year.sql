CREATE DATABASE student_complaint_db;

USE student_complaint_db;

CREATE TABLE academic_year (
    academic_year_id INT AUTO_INCREMENT PRIMARY KEY,
    year_name VARCHAR(20) NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    is_active CHAR(1) DEFAULT 'Y',

    CONSTRAINT chk_academic_year_active
        CHECK (is_active IN ('Y', 'N')),

    CONSTRAINT chk_academic_year_dates
        CHECK (end_date > start_date)
);

INSERT INTO academic_year
(
    year_name,
    start_date,
    end_date,
    is_active
)
VALUES
(
    '2024-25',
    '2024-06-01',
    '2025-05-31',
    'N'
),
(
    '2025-26',
    '2025-06-01',
    '2026-05-31',
    'N'
),
(
    '2026-27',
    '2026-06-01',
    '2027-05-31',
    'Y'
);

SELECT * FROM academic_year;