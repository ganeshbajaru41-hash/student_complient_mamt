SELECT complaint_id, student_id FROM complaint;

SELECT student_id FROM student;

SELECT admin_id FROM admin;

SELECT stream_id FROM stream;

SELECT staff_id FROM staff;







SELECT
    rc.registered_complaint_id,

    c.complaint_id,
    c.complaint_type,
    c.subject,
    c.description,
    c.image_name,
    c.image_path,
    c.image_type,
    c.created_date,

    s.student_id,
    s.roll_number,
    s.name AS student_name,
    s.department,
    s.email,
    s.phone,

    ay.academic_year_id,
    ay.year_name,

    st.stream_id,
    st.stream_name,

    a.admin_id,
    a.name AS admin_name,

    sf.staff_id,
    sf.name AS staff_name,
    sf.designation AS staff_designation,
    sf.department AS staff_department,

    rc.registered_date,
    rc.assigned_date,
    rc.priority,
    rc.registration_status,
    rc.staff_remarks,
    rc.resolution,
    rc.resolved_date,
    rc.verification_status,
    rc.verification_date

FROM registered_complaints rc

INNER JOIN complaint c
    ON rc.complaint_id = c.complaint_id

INNER JOIN student s
    ON rc.student_id = s.student_id

INNER JOIN academic_year ay
    ON c.academic_year_id = ay.academic_year_id

INNER JOIN stream st
    ON rc.stream_id = st.stream_id

INNER JOIN admin a
    ON rc.admin_id = a.admin_id

LEFT JOIN staff sf
    ON rc.assigned_staff_id = sf.staff_id

ORDER BY rc.registered_date DESC;




SELECT
    c.complaint_id,
    c.complaint_type,
    c.subject,
    c.description,
    c.image_name,
    c.created_date,

    rc.registered_complaint_id,
    rc.priority,
    rc.registration_status,
    rc.assigned_date,

    sf.name AS assigned_staff,

    rc.staff_remarks,
    rc.resolution,
    rc.resolved_date,

    rc.verification_status,
    rc.verification_date

FROM complaint c

LEFT JOIN registered_complaints rc
    ON c.complaint_id = rc.complaint_id

LEFT JOIN staff sf
    ON rc.assigned_staff_id = sf.staff_id

WHERE c.student_id = 1

ORDER BY c.created_date DESC;

SELECT
    rc.registered_complaint_id,

    s.roll_number,
    s.name AS student_name,

    c.complaint_type,
    c.subject,

    st.stream_name,

    sf.name AS assigned_staff,

    rc.priority,
    rc.registration_status,

    rc.registered_date,
    rc.assigned_date,

    rc.staff_remarks,
    rc.resolution,
    rc.resolved_date,

    rc.verification_status,
    rc.verification_date

FROM registered_complaints rc

INNER JOIN complaint c
    ON rc.complaint_id = c.complaint_id

INNER JOIN student s
    ON rc.student_id = s.student_id

INNER JOIN stream st
    ON rc.stream_id = st.stream_id

LEFT JOIN staff sf
    ON rc.assigned_staff_id = sf.staff_id

ORDER BY rc.registered_date DESC;

SELECT
    rc.registered_complaint_id,

    s.roll_number,
    s.name AS student_name,

    c.complaint_type,
    c.subject,
    c.description,

    rc.priority,
    rc.registration_status,

    rc.assigned_date,

    rc.staff_remarks,
    rc.resolution,
    rc.resolved_date

FROM registered_complaints rc

INNER JOIN complaint c
    ON rc.complaint_id = c.complaint_id

INNER JOIN student s
    ON rc.student_id = s.student_id

WHERE rc.assigned_staff_id = 1

ORDER BY rc.assigned_date DESC;

UPDATE registered_complaints
SET
    registration_status = 'RESOLVED',
    staff_remarks = 'Issue investigated and corrected.',
    resolution = 'The reported issue has been resolved.',
    resolved_date = NOW()
WHERE registered_complaint_id = 1;

UPDATE registered_complaints
SET
    verification_status = 'VERIFIED',
    verification_date = NOW()
WHERE registered_complaint_id = 1;