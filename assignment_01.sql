-- xóa bảng
DROP DATABASE IF EXISTS assignment_01;
-- tạo bảng
CREATE DATABASE assignment_01;
USE assignment_01;

-- tạo bảng department
DROP TABLE IF EXISTS department;
CREATE TABLE department (
    department_id INT PRIMARY KEY ,
    department_name VARCHAR(50)
);

-- tạo bảng position
DROP TABLE IF EXISTS position;
CREATE TABLE position (
    position_id INT,
    position_name ENUM("Dev","Test","Scrum Master","PM")
);

-- tạo bảng account
DROP TABLE IF EXISTS account;
CREATE TABLE account (
    account_id INT,
    email VARCHAR(50),
    username VARCHAR(50),
    full_name VARCHAR(50),
    department_id INT,
    position_id INT,
    created_date DATE
);

-- tạo bảng group
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
    group_id INT,
    group_name VARCHAR(50),
    creator_id INT,
    created_date DATE
);

-- tạo bảng group_account
DROP TABLE IF EXISTS group_account;
CREATE TABLE group_account (
  group_id INT,
  account_id INT,
  joined_date DATE
);

-- Tạo bảng type_question
DROP TABLE IF EXISTS type_question;
CREATE TABLE type_question (
    type_id INT,
    type_name ENUM("Essay","Multiple-Choice")
);

-- Tạo bảng category_question
DROP TABLE IF EXISTS category_question;
CREATE TABLE category_question (
    category_id INT,
    category_name VARCHAR(50)
);

-- Tạo bảng question
DROP TABLE IF EXISTS question;
CREATE TABLE question (
    question_id INT,
    content VARCHAR(50),
    category_id INT,
    type_id INT,
    creator_id INT,
    created_date DATE
);

-- Tạo bảng answer
DROP TABLE IF EXISTS answer;
CREATE TABLE answer (
    answer_id INT,
    content VARCHAR(50),
    question_id INT,
    is_correct INT
);

-- Tạo bảng exam
DROP TABLE IF EXISTS exam;
CREATE TABLE exam (
    exam_id INT,
    code VARCHAR(50),
    title VARCHAR(50),
    category_id INT,
    duration INT,
    creator_id INT,
    created_date DATE
);

-- Tạo bảng exam_question
DROP TABLE IF EXISTS exam_question;
CREATE TABLE exam_question (
    exam_id INT,
    question_id INT
);

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