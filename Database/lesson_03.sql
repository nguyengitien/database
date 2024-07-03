-- mệnh đề SELECT
SELECT CURRENT_DATE();
SELECT 1+1;
SELECT "TIEN";
SELECT CURRENT_DATE() AS "Today",NOW() AS "Now";
SELECT CURRENT_DATE()  "Today",NOW()  "Now";

-- mệnh đề FROM
SELECT department_name, department_id
FROM department;

-- *:tất cả
SELECT *
FROM question;

-- mệnh đề WHERE

SELECT *
FROM department
WHERE department_id <> 5;

-- AND VÀ OR
SELECT *
FROM department
WHERE department_id >= 5 AND department_id<=8;

SELECT *
FROM department
WHERE department_id < 5 or department_id>8;

-- BETWEEN ... AND ...
SELECT *
FROM department
WHERE department_id BETWEEN 5 AND 8;

-- IN
SELECT *
FROM department
WHERE department_id IN (2,4,6,8);

-- LIKE
-- _: ĐẠI DIỆN CHO 1 KÍ TỰ
-- %: ĐẠI DIỆN CHO 0 HOẶC NHIỀU KÍ TỰ
SELECT *
FROM department
WHERE department_name LIKE "%n%";

-- IS NULL / IS NOT NULL
SELECT *
FROM department
WHERE department_name IS NOT NULL;

-- MỆNH ĐỀ LIMIT : GIỚI HẠN SỐ LƯỢNG TRẢ VỀ
SELECT *
FROM department
LIMIT 5;

SELECT *
FROM department
LIMIT 2,5;    -- bắt đầu, số lượng

-- MỆNH ĐỀ ORDER BY
-- ASC DESC
-- MẶC ĐỊNH ASC
SELECT *
FROM exam
ORDER BY duration DESC;

-- HÀM TỔNG HỢP
-- COUNT(*): ĐẾM SỐ DÒNG
SELECT count(*) AS EXAM_COUNT
FROM exam;
-- COUNT(id) : đếm số dòng mà id IS NOT NULL
SELECT count(duration) AS EXAM_COUNT
FROM exam;

INSERT INTO exam (exam_id, code, title, category_id, duration, creator_id)
VALUES 			 ('11', 'VTIQ011', 'Đề thi MySQL', '2', null, '9');

-- SUM, MIN, MAX, AVG
SELECT 
     SUM(duration),
     MIN(duration),
     MAX(duration),
     AVG(duration)
FROM exam;

-- MỆNH ĐỀ GROUP BY
SELECT duration, COUNT(exam_id) as exam_count
FROM exam
GROUP BY duration;
-- 
SELECT duration,created_date, COUNT(exam_id) as exam_count
FROM exam
GROUP BY duration, created_date
ORDER BY duration, created_date;

-- MỆNH ĐỀ HAVING : LẤY ĐK TRÊN NHÓM
SELECT duration,created_date, COUNT(exam_id) as exam_count
FROM exam
GROUP BY duration, created_date
HAVING COUNT(exam_id)>1
ORDER BY duration, created_date;

-- cập nhật DL
UPDATE department
SET department_name = "phòng chờ"
WHERE department_id = 1;

-- xóa DL
DELETE FROM exam 
WHERE duration IS NULL;

