SQL Server Mastery Exercises - Ugandan Secondary School Database
Based on your database schema, here are comprehensive querying exercises organized by difficulty level to help you master SQL Server.

LEVEL 1: Basic SELECT Queries
Exercise 1.1 - Simple Retrieval
	1.	Retrieve all students from the database
	2.	List all male students only
	3.	Show all teachers whose first name starts with ‘J’
	4.	Display all subjects in alphabetical order
	5.	Count the total number of students in the school
Exercise 1.2 - Filtering with WHERE
	1.	Find all students in S3 (ClassID = 3)
	2.	List all female teachers
	3.	Show students whose last name is ‘Kato’
	4.	Display all classes except S1
	5.	Find teachers whose last name contains ‘ma’
Exercise 1.3 - Sorting & Limiting
	1.	List the first 10 students alphabetically by FirstName
	2.	Show all subjects in descending order
	3.	Display the 5 most recently added students
	4.	List teachers ordered by Gender then LastName

LEVEL 2: Aggregate Functions & Grouping
Exercise 2.1 - COUNT, SUM, AVG
	1.	Count how many students are in each class
	2.	Find the total number of male vs female students
	3.	Count how many teachers teach each subject
	4.	Calculate the total number of students per gender per class
	5.	Find which class has the most students
Exercise 2.2 - GROUP BY & HAVING
	1.	Show classes with more than 25 students
	2.	List subjects taught by more than 2 teachers
	3.	Find genders that have less than 60 students
	4.	Display classes where female students are more than 10
	5.	Show the count of teachers per subject, only where count > 1

LEVEL 3: JOINs
Exercise 3.1 - INNER JOINs
	1.	List all students with their class names (not ClassID)
	2.	Show all teachers with the subjects they teach
	3.	Display student names alongside their class names
	4.	List subjects with teacher names who teach them
	5.	Show all male students with their class names
Exercise 3.2 - Multiple JOINs
	1.	Create a report showing: StudentName, ClassName, Gender
	2.	Show TeacherName, SubjectName for all teaching assignments
	3.	List all S4 students with full details including ClassName
	4.	Display all Biology teachers (subject name, teacher name)
	5.	Show students in S1 and S2 with their class names
Exercise 3.3 - LEFT/RIGHT JOINs
	1.	Show all subjects and their teachers (even if no teacher assigned)
	2.	List all teachers and their subjects (even if teaching nothing)
	3.	Find subjects that have no teachers assigned
	4.	Identify teachers not teaching any subject
	5.	Display all classes and student count (including empty classes)

LEVEL 4: Subqueries
Exercise 4.1 - Simple Subqueries
	1.	Find students in the class with the most students
	2.	List teachers teaching Mathematics (use subquery for SubjectID)
	3.	Show students in the same class as ‘Grace Nabirye’
	4.	Find all subjects taught by male teachers only
	5.	Display classes that have more students than the average
Exercise 4.2 - Correlated Subqueries
	1.	Find students whose class has more than 30 students
	2.	List teachers who teach more subjects than average
	3.	Show students in classes with above-average female enrollment
	4.	Find subjects taught by more teachers than Mathematics
	5.	Display classes where male students exceed class average
Exercise 4.3 - EXISTS/NOT EXISTS
	1.	Find students in classes that have female students
	2.	List subjects that have at least one male teacher
	3.	Show teachers who teach at least one science subject (Biology, Chemistry, Physics)
	4.	Find students in classes with both male and female students
	5.	Display subjects taught by teachers with ‘a’ in their first name

LEVEL 5: Advanced Queries
Exercise 5.1 - CASE Statements
	1.	Categorize students as ‘Junior’ (S1-S2) or ‘Senior’ (S3-S4)
	2.	Label subjects as ‘Science’, ‘Arts’, or ‘Other’
	3.	Create a report showing gender as ‘Male’/‘Female’ instead of M/F
	4.	Classify classes by size: Small (<25), Medium (25-35), Large (>35)
	5.	Tag teachers as ‘Mr.’ or ‘Ms.’ based on gender
Exercise 5.2 - Window Functions
	1.	Rank students within each class by StudentID
	2.	Show running count of students per class
	3.	Calculate the percentage of male/female students per class
	4.	Rank classes by student count
	5.	Show each student with their class’s total student count
Exercise 5.3 - CTEs (Common Table Expressions)
	1.	Create a CTE showing class sizes, then query classes above average
	2.	Use CTE to find the most popular subject (most teachers)
	3.	Create a CTE of female students, then count by class
	4.	Build a CTE of teacher assignments, then find teachers teaching 2+ subjects
	5.	Use CTE to calculate gender ratios per class

LEVEL 6: Data Modification
Exercise 6.1 - UPDATE Queries
	1.	Update all S1 students to S2 (simulating promotion)
	2.	Change teacher ‘John Okello’ to teach Chemistry instead
	3.	Update all male students’ last name to UPPERCASE
	4.	Add ‘Senior’ prefix to all S3 and S4 class names
	5.	Update semester year from 2025 to 2026
Exercise 6.2 - DELETE Queries
	1.	Delete all teacher assignments for ‘Computer Studies’
	2.	Remove all students from S4 (graduation simulation)
	3.	Delete female teachers teaching History
	4.	Remove teacher assignments where TeacherID > 15
	5.	Delete semesters from year 2024
Exercise 6.3 - INSERT Queries
	1.	Add 5 new students to S1
	2.	Insert a new subject ‘Fine Art’
	3.	Add 2 new teachers and assign them to subjects
	4.	Create a new semester ‘Term 1, 2026’
	5.	Add yourself as a student in S4

LEVEL 7: Complex Business Queries
Exercise 7.1 - Reporting
	1.	Create a complete class roster with student count and gender breakdown
	2.	Generate a teacher workload report (teachers with subject counts)
	3.	Build a gender diversity report per class
	4.	Create a subject popularity ranking (by number of teachers)
	5.	Generate a comprehensive school statistics dashboard query
Exercise 7.2 - Analysis Queries
	1.	Find classes with gender imbalance (>60% one gender)
	2.	Identify subjects that need more teachers (only 1 or 2 assigned)
	3.	Calculate male-to-female ratio for each class
	4.	Find the most common last names in the school
	5.	Analyze teacher gender distribution across subjects
Exercise 7.3 - PIVOT Tables
	1.	Create a pivot showing student count per class and gender
	2.	Pivot teacher count by subject and gender
	3.	Show class enrollment across all 4 classes side-by-side
	4.	Pivot showing subjects taught by each teacher
	5.	Create a cross-tab of classes vs student gender distribution

LEVEL 8: Performance & Optimization
Exercise 8.1 - Indexes
	1.	Create an index on Students.ClassID
	2.	Add a composite index on Students (Gender, ClassID)
	3.	Create a unique index on Teachers (FirstName, LastName)
	4.	Build an index on TeacherSubjects for faster lookups
	5.	Analyze query execution plans before and after indexing
Exercise 8.2 - Views
	1.	Create a view showing all students with their class names
	2.	Build a view of teacher workload (teacher name, subject count)
	3.	Create a materialized view of class statistics
	4.	Build a view showing only senior students (S3-S4)
	5.	Create a view of science teachers only
Exercise 8.3 - Stored Procedures
	1.	Create a procedure to enroll a new student
	2.	Build a procedure to assign a teacher to a subject
	3.	Create a procedure to promote all students to the next class
	4.	Build a procedure to generate class reports
	5.	Create a procedure to calculate gender statistics

Bonus Challenge: Real-World Scenario
Create a complete report that shows:
	∙	Total students per class
	∙	Gender breakdown per class
	∙	List of all subjects with teacher assignments
	∙	Classes with teacher-student ratio concerns
	∙	Identification of subjects needing more teachers
Use JOINs, subqueries, CTEs, and window functions in a single comprehensive query!

Practice Tips:
	1.	Start with Level 1 and work your way up
	2.	Try to solve each exercise without looking at solutions first
	3.	Compare your queries for efficiency
	4.	Experiment with different approaches to the same problem
	5.	Use EXPLAIN/Execution Plans to understand query performance
Good luck with your SQL Server mastery journey! 🚀​​​​​​​​​​​​​​​​