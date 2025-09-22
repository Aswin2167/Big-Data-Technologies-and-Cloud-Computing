
-- Create table for workshop registration
CREATE TABLE workshop_registration (
    registration_id SERIAL PRIMARY KEY,
    student_name TEXT NOT NULL,
    email TEXT NOT NULL,
    department VARCHAR(50),
    year INT CHECK (year BETWEEN 1 AND 5),
    workshop_title TEXT NOT NULL,
    workshop_date DATE NOT NULL,
    attendance_status VARCHAR(20) CHECK (attendance_status IN ('Registered', 'Attended', 'Absent')),
    feedback TEXT,
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO workshop_registration (
    student_name, email, department, year, workshop_title, workshop_date, attendance_status, feedback
) VALUES
('Ananya Rao', 'ananya.rao@example.edu', 'Computer Science', 3, 'AI in Education', '2025-09-10', 'Attended', 'Very insightful'),
('Rohan Mehta', 'rohan.mehta@example.edu', 'Electronics', 4, 'IoT and Smart Devices', '2025-09-12', 'Registered', NULL),
('Meera Nair', 'meera.nair@example.edu', 'Information Technology', 2, 'Web Development Bootcamp', '2025-09-15', 'Absent', 'Missed due to exams');
