-- xóa csdl (nếu tồn tại)
DROP DATABASE IF EXISTS lesson_01;

-- tạo database
CREATE DATABASE lesson_01;

-- hiển thị ds csdl
SHOW DATABASES;

-- CHỌN csdl muôns thao tác
USE lesson_01;

-- xóa bảng nếu tồn tại
DROP TABLE IF EXISTS department;

-- tạo bảng
CREATE TABLE department (
    id INT,
    name VARCHAR(50),
    create_date DATE
);

-- thêm dl vào bảng
INSERT INTO department(id, name, create_date)
VALUES                (1, "Bảo vệ", "2024-05-09"),
                      (2, "Kinh doanh", "2024-05-10"),
                      (3, "Giám Đốc", "2024-05-11");
                      
-- hiển thị danh sach dl
TABLE department;
-- hoặc
SELECT * FROM department;  

-- ràng buộc dl
-- khóa chính (PRIMARY KEY)
-- 1.1 bảng có tối đa một khóa chính
-- 2.giá trị là duy nhất
-- 3.Phải NOT NULL
-- tự động tăng: AUTO-INCREMENT

CREATE TABLE product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
--
INSERT INTO product   (id, name)
VALUES                (1, "chuột máy tính");
--
INSERT INTO product   (id, name)
VALUES                (2, "chuột máy tính");
--
INSERT INTO product   ( name)
VALUES                ( "loa");

-- NOT NULL không đc để trống
CREATE TABLE question(
     id INT PRIMARY KEY AUTO_INCREMENT,
     content VARCHAR(100) NOT NULL
);
--
INSERT INTO question (content)
VALUES (NULL);
--
INSERT INTO question (content)
VALUES ("");

-- UNIKEY: khóa duy nhất không đc lặp lại


DROP TABLE IF EXISTS department;
CREATE TABLE department (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
--
DROP TABLE IF EXISTS account;
CREATE TABLE account (
	id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

INSERT INTO department (id, name)
VALUES (100, "Bảo vệ");
INSERT INTO account (full_name, department_id)
VALUES ("Nguyễn Văn Khoa", 100);
 
 

