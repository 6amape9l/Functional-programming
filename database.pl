?- pack_install(http).
?- pack_install(http_json).

:- dynamic department/40.
:- dynamic positions/40.
:- dynamic employees/40.

%Департаменты
department('Sales', 1).
department('Marketing', 2).
department('IT', 3).
department('HR', 4).
department('Finance', 5).
department('Operations', 6).
department('Customer Service', 7).
department('Research and Development', 8).
department('Quality Assurance', 9).
department('Data Analysis', 10).
department('Business Development', 11).
department('Product Management', 12).
department('Software Engineering', 13).
department('Network Administration', 14).
department('Database Administration', 15).
department('Security', 16).
department('IT Support', 17).
department('Web Development', 18).
department('Mobile Development', 19).
department('Artificial Intelligence', 20).

%Должности
positions('Software Engineer', 1, 50000.00, 100000.00).
positions('Marketing Manager', 2, 60000.00, 120000.00).
positions('IT Manager', 3, 70000.00, 140000.00).
positions('HR Manager', 4, 80000.00, 160000.00).
positions('Financial Analyst', 5, 90000.00, 180000.00).
positions('Operations Manager', 6, 100000.00, 200000.00).
positions('Customer Service Representative', 7, 40000.00, 80000.00).
positions('Research Scientist', 8, 50000.00, 100000.00).
positions('Quality Assurance Engineer', 9, 60000.00, 120000.00).
positions('Data Analyst', 10, 70000.00, 140000.00).
positions('Business Development Manager', 11, 80000.00, 160000.00).
positions('Product Manager', 12, 90000.00, 180000.00).
positions('Network Administrator', 13, 100000.00, 200000.00).
positions('Database Administrator', 14, 110000.00, 220000.00).
positions('Security Specialist', 15, 120000.00, 240000.00).
positions('IT Support Specialist', 16, 130000.00, 260000.00).
positions('Web Developer', 17, 140000.00, 280000.00).
positions('Mobile Developer', 18, 150000.00, 300000.00).
positions('Artificial Intelligence Engineer', 19, 160000.00, 320000.00).
positions('Data Scientist', 20, 170000.00, 340000.00).

%Сотрудники
employees('John', 'Doe', 'john.doe@example.com', '123-456-7890', 1, 1, '2020-01-01', 50000.00).
employees('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', 2, 2, '2019-06-01', 60000.00).
employees('Bob', 'Johnson', 'bob.johnson@example.com', '555-123-4567', 1, 1, '2018-03-01', 55000.00).
employees('Alice', 'Williams', 'alice.williams@example.com', '555-555-5555', 2, 2, '2017-09-01', 65000.00).
employees('Mike', 'Davis', 'mike.davis@example.com', '555-555-5556', 1, 1, '2016-06-01', 50000.00).
employees('Emily', 'Brown', 'emily.brown@example.com', '555-555-5557', 2, 2, '2015-03-01', 60000.00).
employees('Tom', 'Miller', 'tom.miller@example.com', '555-555-5558', 1, 1, '2014-09-01', 55000.00).
employees('Lily', 'Taylor', 'lily.taylor@example.com', '555-555-5559', 2, 2, '2013-06-01', 65000.00).
employees('Sam', 'Harris', 'sam.harris@example.com', '555-555-5560', 1, 1, '2012-03-01', 50000.00).
employees('Rachel', 'Martin', 'rachel.martin@example.com', '555-555-5561', 2, 2, '2011-09-01', 60000.00).
employees('Kevin', 'Lee', 'kevin.lee@example.com', '555-555-5562', 1, 1, '2010-06-01', 55000.00).
employees('Sarah', 'Hall', 'sarah.hall@example.com', '555-555-5563', 2, 2, '2009-03-01', 65000.00).
employees('James', 'Walker', 'james.walker@example.com', '555-555-5564', 1, 1, '2008-09-01', 50000.00).
employees('Jessica', 'White', 'jessica.white@example.com', '555-555-5565', 2, 2, '2007-06-01', 60000.00).
employees('David', 'Jackson', 'david.jackson@example.com', '555-555-5566', 1, 1, '2006-03-01', 55000.00).
employees('Laura', 'Thompson', 'laura.thompson@example.com', '555-555-5567', 2, 2, '2005-09-01', 65000.00).
employees('Richard', 'Garcia', 'richard.garcia@example.com', '555-555-5568', 1, 1, '2004-06-01', 50000.00).
employees('Katherine', 'Hernandez', 'katherine.hernandez@example.com', '555-555-5569', 2, 2, '2003-03-01', 60000.00).
employees('Michael', 'Patel', 'michael.patel@example.com', '555-555-5570', 1, 1, '2002-09-01', 55000.00).
employees('Elizabeth', 'Kim', 'elizabeth.kim@example.com', '555-555-5571', 2, 2, '2001-06-01', 65000.00).
employees('Matthew', 'Gonzalez', 'matthew.gonzalez@example.com', '555-555-5572', 1, 1, '2000-03-01', 50000.00).
employees('Hannah', 'Nelson', 'hannah.nelson@example.com', '555-555-5573', 2, 2, '1999-09-01', 60000.00).