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



