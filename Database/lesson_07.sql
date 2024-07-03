-- LOCAL VARIABLE: BIẾN CỤC BỘ
-- PHẠM VI SỬ DỤNG: BEGIN END
-- TỪ KHÓA: DECLARE
-- VD: DECLARE id INT;

-- SESSION VARIABLE: BIẾN SESSION
-- PHẠM VI SỬ DUNG: CẢ SESSION
-- TỪ KHÓA: SET
-- TẠO age = 18
SET @age =18;
SELECT age;

-- GLOBAL VARIABLE: BIẾN TOÀN CỤ
-- PHẠM VI SỬ DỤNG TOÀN BỘ
-- TÙ KHÓA: SET
-- HIỂN THỊ DS BIẾN
SHOW VARIABLES;
-- VD: THAY ĐỔI connect_timeout thành 5
SET GLOBAL connect_timeout = 5;

-- TRIGGER
-- THỜI ĐIỂM: BEFORE AFTER



DROP TRIGGER IF EXISTS trigger_01;
DELIMITER $$
CREATE TRIGGER trigger_01
BEFORE INSERT ON group_account
FOR EACH ROW
BEGIN
	IF NEW.joined_date > CURRENT_DATE THEN
		SET NEW.joined_date = CURRENT_DATE;
    END IF;
END $$
DELIMITER ;

INSERT INTO group_account (group_id, account_id, joined_date)
VALUES (5, 10, "4000-04-04");


-- VD2: 
DROP TRIGGER IF EXISTS trigger_02;
DELIMITER $$
CREATE TRIGGER trigger_02
BEFORE INSERT ON group_account
FOR EACH ROW
BEGIN
	IF NEW.joined_date > CURRENT_DATE THEN
        SIGNAL SQLSTATE "12345"
		SET MESSAGE_TEXT = "THỜI GIAN KHÔNG HỢP LỆ";
    END IF;
END $$
DELIMITER ;

INSERT INTO group_account (group_id, account_id, joined_date)
VALUES (5, 10, "4000-04-04");

-- HIỂN THỊ DS TRIGGER
SHOW TRIGGERS;


-- CASE WHEN

SELECT  *,
     CASE
        WHEN duration <= 80 THEN "Short time"
        WHEN duration <= 100 THEN "Medium time"
        ELSE "Long time"
	END AS duration_type
FROM exam;

-- INDEX: ĐÁNH CHỈ MỤc
CREATE INDEX index_name
ON department(department_name);
--
CREATE INDEX index_email_username
ON account(email, username);
--
SELECT *
FROM department
WHERE department_name = "Sale";

-- xóa index
DROP INDEX index_name ON department;

-- hiển thị bản INDEX
SHOW INDEX FROM department; 

 

