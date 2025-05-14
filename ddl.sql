-- Table 1: Employee Profile
CREATE TABLE employee_profile (
    employee_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name NVARCHAR(100),
    last_name NVARCHAR(100),
    job_title NVARCHAR(100),
    department NVARCHAR(100),
    hire_date DATE
);

-- Table 2: Employee Salary
CREATE TABLE employee_salary (
    employee_id INT PRIMARY KEY,
    rank NVARCHAR(50),
    salary DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES employee_profile(employee_id)
);

-- Table 3: Employee Bio
CREATE TABLE employee_bio (
    employee_id INT PRIMARY KEY,
    bio NVARCHAR(MAX),
    FOREIGN KEY (employee_id) REFERENCES employee_profile(employee_id)
);
