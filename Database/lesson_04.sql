DROP DATABASE IF EXISTS lesson_04;
CREATE DATABASE lesson_04;
USE lesson_04;

DROP TABLE IF EXISTS boy;
CREATE TABLE boy (
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS girl;
CREATE TABLE girl (
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

INSERT INTO boy (id, name   )
VALUES          (1 , "Khoa" ),
                (2 , "Duy"  ),
                (3 , "Hùng" ),
                (4 , "Cường"),
                (6 , "Linh" );

INSERT INTO girl (id, name      )
VALUES           (1 , "Thương"  ),
                 (2 , "Ngọc Anh"),
                 (5 , "Trang"   ),
                 (6 , "Linh"    );
-- MỆNH ĐỀ JOIN
-- INNER JOIN
-- Lấy ra cặp boy va girl có cùng id
SELECT *
FROM boy
JOIN    girl ON boy.id = girl.id;             
-- 
SELECT *
FROM boy
INNER JOIN  girl USING(id); 

-- LEFT JOIN/ RIGHT JOIN
SELECT *
FROM boy
LEFT JOIN girl USING(id);

-- LEFT / RIGHT EXCLUDING JOIN
SELECT *
FROM boy
LEFT JOIN girl USING(id)
WHERE girl.name IS NULL;

-- CROSS JOIN
SELECT *
FROM boy
CROSS JOIN girl;

-- UNION
SELECT *
FROM boy
UNION ALL
SELECT *
FROM girl;

-- INTERSECT
SELECT *
FROM boy
INTERSECT
SELECT *
FROM girl;

-- EXCEPT
SELECT *
FROM boy
EXCEPT
SELECT *
FROM girl;

                 