# פרויקט SQL - שלב ב

## חלק א' - שאילתות SELECT

---

### שאילתה 1  
*מה עושה השאילתה:*  
מציגה כמה ביקורים קיבל כל דייר בכל חודש, ומה סוג הקרבה של המבקרים.

*למה צריך את השאילתה:*  
כדי לזהות דפוסי ביקור לאורך זמן ולנתח אילו דיירים מקבלים יותר או פחות ביקורים – כלי חשוב לטיפול רגשי וחברתי.

*צילום קוד ההרצה ותוצאה:*  
\
![Screenshot (341)](https://github.com/user-attachments/assets/02eb8f0b-21ae-408e-a844-c6872435e632)


---

### שאילתה 2  
*מה עושה השאילתה:*  
מציגה את ממוצע גיל הדיירים לפי מצב רפואי ומגדר, כולל כמות הדיירים.

*למה צריך את השאילתה:*  
כדי להבין את פרופיל הדיירים ולתכנן משאבים רפואיים בהתאם לקבוצות גיל ומצב בריאותי.

*צילום קוד ההרצה ותוצאה:*  
\
![Screenshot (342)](https://github.com/user-attachments/assets/1b438333-06a4-4626-a718-dfc57d58b350)


---

### שאילתה 3  
*מה עושה השאילתה:*  
מציגה כמה מטפלים יש בכל מחלקה, ואילו התמחויות קיימות בה.

*למה צריך את השאילתה:*  
כדי לבדוק איזון כוח אדם ולוודא שכל מחלקה כוללת צוות מגוון מספיק מבחינת התמחות.

*צילום קוד ההרצה ותוצאה:*  
\
![Screenshot (343)](https://github.com/user-attachments/assets/cf6411de-5c81-4848-ba65-22e8e7ecda03)


---

### שאילתה 4  
*מה עושה השאילתה:*  
מציגה שם, גיל, מגדר, ומשך שהות (בימים) של כל דייר, כולל שם המחלקה.

*למה צריך את השאילתה:*  
כדי לזהות דיירים ותיקים או חדשים, להעריך עומסים במחלקות ולהתאים תוכניות טיפול אישיות.

*צילום קוד ההרצה ותוצאה:*  
\
![Screenshot (348)](https://github.com/user-attachments/assets/d0df759e-738c-43c7-8d4d-bda2855c6131)


---

### שאילתה 5  
*מה עושה השאילתה:*  
מציגה ממוצע ימי שהות של דיירים לפי מחלקה וסוג חדר.

*למה צריך את השאילתה:*  
כדי להבין האם סוג חדר או מחלקה מסוימת גורמים לשהות ארוכה יותר, ולבצע אופטימיזציה בשיבוץ.

*צילום קוד ההרצה ותוצאה:*  
\
![Screenshot (344)](https://github.com/user-attachments/assets/f7ac0d52-1043-42ed-8025-19ac7ae300e9)


---

### שאילתה 6  
*מה עושה השאילתה:*  
מציגה כמה מטפלים גויסו בכל שנה, כולל שמותיהם והתמחויותיהם.

*למה צריך את השאילתה:*  
כדי לנתח מגמות גיוס לאורך השנים ולזהות תקופות עומס או מחסור בכוח אדם.

*צילום קוד ההרצה ותוצאה:*  
\
![Screenshot (345)](https://github.com/user-attachments/assets/956ccb51-c815-412c-9939-ccf636b3efd2)


---

### שאילתה 7  
*מה עושה השאילתה:*  
מציגה את הביקורים שביצעו בני משפחה קרובים בלבד (בן/בת/בן זוג), לפי תאריך.

*למה צריך את השאילתה:*  
כדי לעקוב אחר רמת התמיכה המשפחתית הקרובה של הדיירים ולאתר מקרים של חוסר קשר.

*צילום קוד ההרצה ותוצאה:*  
\
![Screenshot (346)](https://github.com/user-attachments/assets/4c68ae89-0374-4c04-8a6d-604fca5bab1f)


---

### שאילתה 8  
*מה עושה השאילתה:*  
מציגה פילוח של מצב רפואי של דיירים בכל מחלקה, כולל שמות הדיירים.

*למה צריך את השאילתה:*  
כדי להבין את התפלגות המצב הרפואי במחלקות ולהקצות משאבים רפואיים בהתאם.

*צילום קוד ההרצה ותוצאה:*  
\
![Screenshot (347)](https://github.com/user-attachments/assets/9fa74f70-6dcf-4671-9709-b3e5e20adf9a)


---

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

![Screenshot (279)](https://github.com/user-attachments/assets/277cb6ef-369e-4c0a-97cb-e336a4ff9ce5)


### אילוץ 2
**מה עושה הפקודה:**  
בודק שטיפול רפואי (treatmentdate) אינו בעתיד.

**הרצת ALTER TABLE:**  
![Screenshot (278)](https://github.com/user-attachments/assets/d17cd589-99d0-4e4c-9167-db0ccfb4eb2f)


**ניסיון להפר את האילוץ:**  


![Screenshot (280)](https://github.com/user-attachments/assets/5b93b254-b688-4787-944e-bbc8ba5e080a)

### אילוץ 3
**מה עושה הפקודה:**  
בודק שמספר טלפון של מטפל מכיל לפחות 10 תווים.

**הרצת ALTER TABLE:**  
![Screenshot (278)](https://github.com/user-attachments/assets/412dccc1-acc0-4d0b-a4bb-621a16d05731)

**ניסיון להפר את האילוץ:**  

![Screenshot (281)](https://github.com/user-attachments/assets/625bb09e-b718-41e9-b72d-0d042f2bc048)


## חלק ד' - דוגמאות ROLLBACK ו-COMMIT

### דוגמת COMMIT
**מה נעשה:**  
הכנסה של שורה חדשה עם ביצוע COMMIT לשמירת השינויים.

**מצב לפני:**  
![Screenshot (282)](https://github.com/user-attachments/assets/6144c65d-eecc-4f2b-b548-8cb9a13b6df9)

**אחרי COMMIT:**  

---![Screenshot (283)](https://github.com/user-attachments/assets/e13a68a7-dd0a-4008-a575-ba0500fc782e)


### דוגמת ROLLBACK
**מה נעשה:**  
הכנסה של שורה חדשה וביטול העסקה עם ROLLBACK.

**מצב לפני:**  
![Screenshot (283)](https://github.com/user-attachments/assets/15f40df7-f2c2-4972-94c1-fa9df9c572af)

**אחרי ROLLBACK:**  
![Screenshot (283)](https://github.com/user-attachments/assets/c887ee9c-0703-4101-bf30-fd81a0e86aa7)

---
