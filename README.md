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

**הרצת מחיקה:**  
delete from medicaltreatment
where treatmentdate < (now() - interval '10 years');
**מצב אחרי:**  
![אחרי מחיקה 2](path/to/screenshot_after_delete2.png)

---

### מחיקה 3
**מה עושה השאילתה:**  
מוחקת דיירים שאין להם ביקורים משפחתיים ואין להם טיפולים.

**מצב לפני:**  
![לפני מחיקה 3](path/to/screenshot_before_delete3.png)

**הרצת מחיקה:**  
![הרצת מחיקה 3](path/to/screenshot_delete3.png)

**מצב אחרי:**  
![אחרי מחיקה 3](path/to/screenshot_after_delete3.png)

---

### עדכון 1
**מה עושה השאילתה:**  
מגדיל את הקיבולת של חדרים בקומה הראשונה.

**מצב לפני:**  
![לפני עדכון 1](path/to/screenshot_before_update1.png)

**הרצת עדכון:**  
![הרצת עדכון 1](path/to/screenshot_update1.png)

**מצב אחרי:**  
![אחרי עדכון 1](path/to/screenshot_after_update1.png)

---

### עדכון 2
**מה עושה השאילתה:**  
משנה סוג טיפול לטיפולים שבוצעו בשנה שעברה ל-"Routine Treatment".

**מצב לפני:**  
![לפני עדכון 2](path/to/screenshot_before_update2.png)

**הרצת עדכון:**  
![הרצת עדכון 2](path/to/screenshot_update2.png)

**מצב אחרי:**  
![אחרי עדכון 2](path/to/screenshot_after_update2.png)

---

### עדכון 3
**מה עושה השאילתה:**  
מעביר מספר טלפון של מטפלים שהועסקו לפני יותר מ-10 שנים ל-'000-000-0000'.

**מצב לפני:**  
![לפני עדכון 3](path/to/screenshot_before_update3.png)

**הרצת עדכון:**  
![הרצת עדכון 3](path/to/screenshot_update3.png)

**מצב אחרי:**  
![אחרי עדכון 3](path/to/screenshot_after_update3.png)

---

## חלק ג' - אילוצים (Constraints)

### אילוץ 1
**מה עושה הפקודה:**  
בודק ש-capacity בטבלת room בין 1 ל-5.

**הרצת ALTER TABLE:**  
![הרצת ALTER TABLE 1](path/to/screenshot_alter1.png)

**ניסיון להפר את האילוץ:**  
![ניסיון הפרה 1](path/to/screenshot_violation1.png)

---

### אילוץ 2
**מה עושה הפקודה:**  
בודק שטיפול רפואי (treatmentdate) אינו בעתיד.

**הרצת ALTER TABLE:**  
![הרצת ALTER TABLE 2](path/to/screenshot_alter2.png)

**ניסיון להפר את האילוץ:**  
![ניסיון הפרה 2](path/to/screenshot_violation2.png)

---

### אילוץ 3
**מה עושה הפקודה:**  
בודק שמספר טלפון של מטפל מכיל לפחות 10 תווים.

**הרצת ALTER TABLE:**  
![הרצת ALTER TABLE 3](path/to/screenshot_alter3.png)

**ניסיון להפר את האילוץ:**  
![ניסיון הפרה 3](path/to/screenshot_violation3.png)

---

## חלק ד' - דוגמאות ROLLBACK ו-COMMIT

### דוגמת COMMIT
**מה נעשה:**  
הכנסה של שורה חדשה עם ביצוע COMMIT לשמירת השינויים.

**מצב לפני:**  
![לפני COMMIT](path/to/screenshot_before_commit.png)

**אחרי COMMIT:**  
![אחרי COMMIT](path/to/screenshot_after_commit.png)

---

### דוגמת ROLLBACK
**מה נעשה:**  
הכנסה של שורה חדשה וביטול העסקה עם ROLLBACK.

**מצב לפני:**  
![לפני ROLLBACK](path/to/screenshot_before_rollback.png)

**אחרי ROLLBACK:**  
![אחרי ROLLBACK](path/to/screenshot_after_rollback.png)

---
