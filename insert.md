

## 1️⃣ Students Table 

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

## 2️⃣ 70 MALE STUDENTS 

```sql
INSERT INTO Students (FirstName, LastName, Gender, ClassID) VALUES
('Brian', 'Kato', 'M', 1),
('Daniel', 'Ssemanda', 'M', 2),
('Joseph', 'Mugisha', 'M', 3),
('Michael', 'Tumusiime', 'M', 4),
('Isaac', 'Nsubuga', 'M', 1),
('David', 'Okello', 'M', 2),
('Jonathan', 'Ouma', 'M', 3),
('Samuel', 'Ochieng', 'M', 4),
('Patrick', 'Kagimu', 'M', 1),
('Andrew', 'Ssemakula', 'M', 2),
('Ronald', 'Lutalo', 'M', 3),
('Kenneth', 'Wamala', 'M', 4),
('Elijah', 'Balikuddembe', 'M', 1),
('Frank', 'Kibirige', 'M', 2),
('Peter', 'Ssenteza', 'M', 3),
('James', 'Kasozi', 'M', 4),
('Ivan', 'Lubega', 'M', 1),
('Caleb', 'Namanya', 'M', 2),
('Allan', 'Tumwine', 'M', 3),
('Joel', 'Bukenya', 'M', 4),
('Emmanuel', 'Byaruhanga', 'M', 1),
('Isaiah', 'Kanyesigye', 'M', 2),
('George', 'Rwakasyaguri', 'M', 3),
('Henry', 'Mwesigwa', 'M', 4),
('Simon', 'Kiyingi', 'M', 1),
('Moses', 'Atwine', 'M', 2),
('Nicholas', 'Twinomujuni', 'M', 3),
('Alex', 'Mugabi', 'M', 4),
('Charles', 'Nuwamanya', 'M', 1),
('Victor', 'Bashir', 'M', 2),
('Hassan', 'Kato', 'M', 3),
('Abdul', 'Sadiq', 'M', 4),
('Farouk', 'Mugoya', 'M', 1),
('Yusuf', 'Kakande', 'M', 2),
('Sulaiman', 'Sseremba', 'M', 3),
('Abraham', 'Turyasingura', 'M', 4),
('Benjamin', 'Mwesigye', 'M', 1),
('Stephen', 'Kaheru', 'M', 2),
('Paul', 'Rwabugande', 'M', 3),
('Eric', 'Kanyomozi', 'M', 4),
('Timothy', 'Katoogo', 'M', 1),
('Luke', 'Ssebunya', 'M', 2),
('Martin', 'Kibalama', 'M', 3),
('Noah', 'Musinguzi', 'M', 4),
('Aaron', 'Banyarwanda', 'M', 1),
('Felix', 'Kato', 'M', 2),
('Wilfred', 'Kalanzi', 'M', 3),
('Godfrey', 'Ssewanyana', 'M', 4),
('Shaban', 'Kakooza', 'M', 1),
('Julius', 'Kisitu', 'M', 2),
('Leonard', 'Basaliza', 'M', 3),
('Osman', 'Kalule', 'M', 4),
('Richard', 'Mukiibi', 'M', 1),
('Robert', 'Ssekabira', 'M', 2),
('Dennis', 'Kiggundu', 'M', 3),
('Francis', 'Mugume', 'M', 4),
('Anthony', 'Kiwalabye', 'M', 1),
('Albert', 'Tibamanya', 'M', 2),
('Collins', 'Rwamugisa', 'M', 3),
('Ethan', 'Ntege', 'M', 4),
('Hillary', 'Kato', 'M', 1),
('Ian', 'Baguma', 'M', 2),
('Ivan', 'Kagwa', 'M', 3);
```

---

## 50 FEMALE STUDENTS 

```sql
INSERT INTO Students (FirstName, LastName, Gender, ClassID) VALUES
('Grace', 'Nabirye', 'F', 1),
('Mary', 'Namirembe', 'F', 2),
('Sarah', 'Achan', 'F', 3),
('Esther', 'Atim', 'F', 4),
('Ruth', 'Nankya', 'F', 1),
('Joy', 'Kawuma', 'F', 2),
('Agnes', 'Namusoke', 'F', 3),
('Janet', 'Akello', 'F', 4),
('Rebecca', 'Ninsiima', 'F', 1),
('Mercy', 'Tumwebaze', 'F', 2),
('Hannah', 'Katushabe', 'F', 3),
('Florence', 'Namazzi', 'F', 4),
('Sheila', 'Nambatya', 'F', 1),
('Faith', 'Kyomuhendo', 'F', 2),
('Patience', 'Mutesi', 'F', 3),
('Linda', 'Nakato', 'F', 4),
('Brenda', 'Kizza', 'F', 1),
('Christine', 'Kabonesa', 'F', 2),
('Viola', 'Nabukenya', 'F', 3),
('Diana', 'Nalukenge', 'F', 4),
('Deborah', 'Aheebwa', 'F', 1),
('Joyce', 'Kagoda', 'F', 2),
('Martha', 'Akoth', 'F', 3),
('Betty', 'Namusisi', 'F', 4),
('Alice', 'Nabaggala', 'F', 1),
('Monica', 'Nanyonga', 'F', 2),
('Catherine', 'Kahunde', 'F', 3),
('Priscilla', 'Ainomugisha', 'F', 4),
('Dorothy', 'Kembabazi', 'F', 1),
('Sharon', 'Atukunda', 'F', 2),
('Susan', 'Namugga', 'F', 3),
('Vanessa', 'Nabirye', 'F', 4),
('Gloria', 'Namayanja', 'F', 1),
('Lydia', 'Akumu', 'F', 2),
('Flavia', 'Kabagambe', 'F', 3),
('Phoebe', 'Nakyambadde', 'F', 4),
('Sophia', 'Nakatudde', 'F', 1),
('Naomi', 'Nambasa', 'F', 2),
('Esther', 'Kiconco', 'F', 3),
('Judith', 'Kiconco', 'F', 4),
('Angela', 'Mirembe', 'F', 1),
('Beatrice', 'Nanyunja', 'F', 2),
('Harriet', 'Nabaggala', 'F', 3),
('Irene', 'Nabwire', 'F', 4),
('Rachel', 'Kagaba', 'F', 1),
('Pauline', 'Kanyomozi', 'F', 2),
('Nancy', 'Nalukwago', 'F', 3),
('Victoria', 'Nabadda', 'F', 4),
('Stella', 'Nambalirwa', 'F', 1),
('Zainab', 'Namugenyi', 'F', 2);
```

---

## 4️⃣ Verification Queries 

```sql
-- Confirm totals
SELECT Gender, COUNT(*) AS Total
FROM Students
GROUP BY Gender;

-- Ensure all names are unique
SELECT FirstName, LastName, COUNT(*)
FROM Students
GROUP BY FirstName, LastName
HAVING COUNT(*) > 1;
```
