# פרויקט SQL - שלב ב

## חלק א' - שאילתות SELECT

### שאילתה 1
**מה עושה השאילתה:**  
מציגה את כל הדיירים שנכנסו לבית האבות בשנה האחרונה, לפי קומה.

**צילום קוד ההרצה ותוצאה:**  

---![Screenshot (253)](https://github.com/user-attachments/assets/68301244-da60-488c-9184-d108b4e806b9)


### שאילתה 2
**מה עושה השאילתה:**  
מציגה את מספר המטפלים בכל מחלקה.

**צילום קוד ההרצה ותוצאה:**  

---![Screenshot (254)](https://github.com/user-attachments/assets/b7106d3b-0e9f-42d5-bdac-7c179da45c6e)


### שאילתה 3
**מה עושה השאילתה:**  
מציגה דיירים וכמות ביקורים משפחתיים לכל דייר.

**צילום קוד ההרצה ותוצאה:**  

---![Screenshot (255)](https://github.com/user-attachments/assets/4fcc0f38-7b66-4f29-83f0-3f2bc5c68911)


### שאילתה 4
**מה עושה השאילתה:**  
מציגה את ממוצע הגיל של הדיירים לפי סוג החדר.

**צילום קוד ההרצה ותוצאה:**  
\
![Screenshot (256)](https://github.com/user-attachments/assets/0064ac93-b755-4ad8-8f85-3e86274f75d5)

---

### שאילתה 5
**מה עושה השאילתה:**  
מציגה מטפלים שביצעו מעל 5 טיפולים השנה.

**צילום קוד ההרצה ותוצאה:**  

![Screenshot (257)](https://github.com/user-attachments/assets/97de7d39-8835-458f-a85e-d3c630207020)

---

### שאילתה 6
**מה עושה השאילתה:**  
מציגה דיירים עם הכי הרבה ביקורים משפחתיים בחודש האחרון.

**צילום קוד ההרצה ותוצאה:**  

![Screenshot (258)](https://github.com/user-attachments/assets/e03c7eeb-1539-4390-99ce-a8a4a6f474c1)

---

### שאילתה 7
**מה עושה השאילתה:**  
מציגה את התאריכים בהם התקבלו הכי הרבה דיירים.

**צילום קוד ההרצה ותוצאה:**  

![Screenshot (259)](https://github.com/user-attachments/assets/1f21eac8-2164-4004-92d7-f0c43362e2fd)

---

### שאילתה 8
**מה עושה השאילתה:**  
מציגה את מספר הדיירים בכל קומה.

**צילום קוד ההרצה ותוצאה:**  

---![Screenshot (260)](https://github.com/user-attachments/assets/232c8552-6cfb-4164-8576-09cebc44390c)


## חלק ב' - מחיקות (DELETE) ועדכונים (UPDATE)

### מחיקה 1
**מה עושה השאילתה:**  
מוחקת ביקורים משפחתיים מלפני יותר מ-5 שנים.

**מצב לפני:**  
![Screenshot (261)](https://github.com/user-attachments/assets/a02bc2bd-8fa6-444a-9d9e-048616687058)

**הרצת מחיקה:**  
delete from familyvisit
where visitdate < (now() - interval '5 years');
**מצב אחרי:**  

![Screenshot (262)](https://github.com/user-attachments/assets/60277086-b6b4-463e-afed-8c232b223890)

---

### מחיקה 2
**מה עושה השאילתה:**  
מוחקת טיפולים רפואיים שנעשו לפני יותר מ-10 שנים.

**מצב לפני:**  
![Screenshot (263)](https://github.com/user-attachments/assets/d7ffd1c3-441f-4869-9d7e-22489f80e109)

**הרצת מחיקה:**  
delete from medicaltreatment
where treatmentdate < (now() - interval '10 years');
**מצב אחרי:**  
![Screenshot (264)](https://github.com/user-attachments/assets/580b6873-27a1-4c6a-8df3-a75210d0193b)

---

### מחיקה 3
**מה עושה השאילתה:**  
מוחקת דיירים שאין להם ביקורים משפחתיים ואין להם טיפולים.

**מצב לפני:**  
![Screenshot (265)](https://github.com/user-attachments/assets/924d5791-9b23-44c0-8e39-691e677dab81)

**הרצת מחיקה:**  
delete from resident
where residentid not in (select distinct residentid from medicaltreatment)
  and residentid not in (select distinct residentid from familyvisit);
**מצב אחרי:**  

---![Screenshot (266)](https://github.com/user-attachments/assets/8da6c97e-9d76-4825-b237-a7ef63f714fd)


### עדכון 1
**מה עושה השאילתה:**  
מגדיל את הקיבולת של חדרים בקומה הראשונה.

**מצב לפני:**  
![Screenshot (267)](https://github.com/user-attachments/assets/c8a2dcb8-225f-4cea-b8f9-b0933bd0227b)

**הרצת עדכון:**  
update room
set capacity = capacity + 1
where floor = 1;

**מצב אחרי:**  

---![Screenshot (268)](https://github.com/user-attachments/assets/8c1a914c-e9b0-43fb-95f4-641a32895d73)


### עדכון 2
**מה עושה השאילתה:**  
משנה סוג טיפול לטיפולים שבוצעו בשנה שעברה ל-"Routine Treatment".

**מצב לפני:**  
![Screenshot (269)](https://github.com/user-attachments/assets/77ce8648-857b-4138-9437-f0fcef69d094)

**הרצת עדכון:**  
update medicaltreatment
set treatmenttype = 'Routine Treatment'
where extract(year from treatmentdate) = extract(year from now()) - 1;
**מצב אחרי:**  

---![Screenshot (270)](https://github.com/user-attachments/assets/8d3626b4-a472-4b22-95fc-1584de8ba709)


### עדכון 3
**מה עושה השאילתה:**  
מעביר מספר טלפון של מטפלים שהועסקו לפני יותר מ-10 שנים ל-'000-000-0000'.

**מצב לפני:**  
![Screenshot (274)](https://github.com/user-attachments/assets/275d0c18-67c8-4c8d-9b83-c4ea51fdedfa)


**הרצת עדכון:**  
update caregiver
set phone = '000-000-0000'
where hiredate < (now() - interval '10 years');
**מצב אחרי:**  

---
![Screenshot (275)](https://github.com/user-attachments/assets/ee64eb74-ee25-4fa0-81d8-3dd51af4d390)

## חלק ג' - אילוצים (Constraints)

### אילוץ 1
**מה עושה הפקודה:**  
בודק ש-capacity בטבלת room בין 1 ל-5.

**הרצת ALTER TABLE:**  
![Screenshot (278)](https://github.com/user-attachments/assets/f799a669-aab1-489e-98eb-e5bca25c3272)

**ניסיון להפר את האילוץ:**  
![Uploading Screenshot (279).png…]()



### אילוץ 2
**מה עושה הפקודה:**  
בודק שטיפול רפואי (treatmentdate) אינו בעתיד.

**הרצת ALTER TABLE:**  
![Screenshot (278)](https://github.com/user-attachments/assets/d17cd589-99d0-4e4c-9167-db0ccfb4eb2f)


**ניסיון להפר את האילוץ:**  



### אילוץ 3
**מה עושה הפקודה:**  
בודק שמספר טלפון של מטפל מכיל לפחות 10 תווים.

**הרצת ALTER TABLE:**  
![Screenshot (278)](https://github.com/user-attachments/assets/412dccc1-acc0-4d0b-a4bb-621a16d05731)

**ניסיון להפר את האילוץ:**  



## חלק ד' - דוגמאות ROLLBACK ו-COMMIT

### דוגמת COMMIT
**מה נעשה:**  
הכנסה של שורה חדשה עם ביצוע COMMIT לשמירת השינויים.

**מצב לפני:**  

**אחרי COMMIT:**  

---

### דוגמת ROLLBACK
**מה נעשה:**  
הכנסה של שורה חדשה וביטול העסקה עם ROLLBACK.

**מצב לפני:**  

**אחרי ROLLBACK:**  

---
