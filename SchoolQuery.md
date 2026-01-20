
# 1. Create Database

```sql
CREATE DATABASE UgandanSecondarySchoolDB;
GO
USE UgandanSecondarySchoolDB;
GO
```

---

# 2. Core Tables

## 2.1 Classes

```sql
CREATE TABLE Classes (
    ClassID INT IDENTITY PRIMARY KEY,
    ClassName VARCHAR(20) NOT NULL -- e.g. S1, S2, S3, S4
);
```

```sql
INSERT INTO Classes (ClassName)
VALUES ('S1'), ('S2'), ('S3'), ('S4');
```

---

## 2.2 Semesters

```sql
CREATE TABLE Semesters (
    SemesterID INT IDENTITY PRIMARY KEY,
    SemesterName VARCHAR(20), -- Term 1, Term 2, Term 3
    Year INT
);
```

```sql
INSERT INTO Semesters (SemesterName, Year)
VALUES 
('Term 1', 2025),
('Term 2', 2025),
('Term 3', 2025);
```

---

## 2.3 Subjects (9 Subjects)

```sql
CREATE TABLE Subjects (
    SubjectID INT IDENTITY PRIMARY KEY,
    SubjectName VARCHAR(50) NOT NULL
);
```

```sql
INSERT INTO Subjects (SubjectName)
VALUES
('Mathematics'),
('English'),
('Biology'),
('Chemistry'),
('Physics'),
('Geography'),
('History'),
('Computer Studies'),
('Entrepreneurship');
```

---

# 3. Teachers

## 3.1 Teachers Table

```sql
CREATE TABLE Teachers (
    TeacherID INT IDENTITY PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender CHAR(1) CHECK (Gender IN ('M','F'))
);
```

### Insert **18 Teachers**

```sql
INSERT INTO Teachers (FirstName, LastName, Gender)
VALUES
('John', 'Okello', 'M'),
('Peter', 'Ochieng', 'M'),
('Paul', 'Ssemakula', 'M'),
('Joseph', 'Kato', 'M'),
('Michael', 'Mugisha', 'M'),
('David', 'Tumwesigye', 'M'),
('Isaac', 'Nsubuga', 'M'),
('Daniel', 'Kiryowa', 'M'),
('Robert', 'Kagimu', 'M'),
('Grace', 'Namakula', 'F'),
('Mary', 'Nabirye', 'F'),
('Sarah', 'Atim', 'F'),
('Esther', 'Achan', 'F'),
('Agnes', 'Namirembe', 'F'),
('Jane', 'Nansubuga', 'F'),
('Ruth', 'Akello', 'F'),
('Betty', 'Katusiime', 'F'),
('Florence', 'Ninsiima', 'F');
```

---

## 3.2 TeacherSubjects (Each subject has teachers)

```sql
CREATE TABLE TeacherSubjects (
    TeacherID INT,
    SubjectID INT,
    PRIMARY KEY (TeacherID, SubjectID),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);
```

### Assign teachers evenly to subjects

```sql
INSERT INTO TeacherSubjects (TeacherID, SubjectID)
SELECT TeacherID, ((TeacherID - 1) % 9) + 1
FROM Teachers;
```

---

# 4. Students

## 4.1 Students Table

```sql
CREATE TABLE Students (
    StudentID INT IDENTITY PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender CHAR(1) CHECK (Gender IN ('M','F')),
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);
```

---

### Insert **120 Students (70 Male, 50 Female)**

```sql
DECLARE @i INT = 1;

-- 70 Male students
WHILE @i <= 70
BEGIN
    INSERT INTO Students (FirstName, LastName, Gender, ClassID)
    VALUES (
        CONCAT('Moses', @i),
        'Kato',
        'M',
        ((@i - 1) % 4) + 1
    );
    SET @i += 1;
END

SET @i = 1;

-- 50 Female students
WHILE @i <= 50
BEGIN
    INSERT INTO Students (FirstName, LastName, Gender, ClassID)
    VALUES (
        CONCAT('Grace', @i),
        'Nabirye',
        'F',
        ((@i - 1) % 4) + 1
    );
    SET @i += 1;
END
```

---

# 5. StudentSubjects

👉 **Each student takes exactly 4 subjects**

```sql
CREATE TABLE StudentSubjects (
    StudentID INT,
    SubjectID INT,
    PRIMARY KEY (StudentID, SubjectID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);
```

### Automatically assign **4 subjects per student**

```sql
INSERT INTO StudentSubjects (StudentID, SubjectID)
SELECT StudentID, SubjectID
FROM (
    SELECT 
        s.StudentID,
        sub.SubjectID,
        ROW_NUMBER() OVER (PARTITION BY s.StudentID ORDER BY NEWID()) AS rn
    FROM Students s
    CROSS JOIN Subjects sub
) x
WHERE rn <= 4;
```

---

# 6. Marks

```sql
CREATE TABLE Marks (
    MarkID INT IDENTITY PRIMARY KEY,
    StudentID INT,
    SubjectID INT,
    SemesterID INT,
    ExamType VARCHAR(20), -- BOT, MID, EOT
    Score INT CHECK (Score BETWEEN 0 AND 100),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID),
    FOREIGN KEY (SemesterID) REFERENCES Semesters(SemesterID)
);
```

---

### Generate **realistic marks**

```sql
INSERT INTO Marks (StudentID, SubjectID, SemesterID, ExamType, Score)
SELECT 
    ss.StudentID,
    ss.SubjectID,
    sem.SemesterID,
    exam.ExamType,
    ABS(CHECKSUM(NEWID())) % 41 + 50 -- Scores between 50 and 90
FROM StudentSubjects ss
CROSS JOIN Semesters sem
CROSS JOIN (
    VALUES ('BOT'), ('MID'), ('EOT')
) exam(ExamType);
```

---

# 7. Example Queries

### Student report card

```sql
SELECT 
    s.FirstName,
    s.LastName,
    sub.SubjectName,
    m.ExamType,
    m.Score
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE s.StudentID = 1;
```

### Average per subject

```sql
SELECT 
    sub.SubjectName,
    AVG(m.Score) AS AverageScore
FROM Marks m
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
GROUP BY sub.SubjectName;
```

