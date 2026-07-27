DROP DATABASE IF EXISTS if0_42423949_demo_student_management_system;

CREATE DATABASE if0_42423949_demo_student_management_system
CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;

USE if0_42423949_demo_student_management_system;


/*
|--------------------------------------------------------------------------
| Users
|--------------------------------------------------------------------------
*/

CREATE TABLE users
(
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    uuid CHAR(36) NOT NULL UNIQUE,

    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,

    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20) DEFAULT NULL,

    password VARCHAR(255) NOT NULL,

    address TEXT DEFAULT NULL,

    photo VARCHAR(255) DEFAULT NULL,

    role ENUM('admin','management') NOT NULL DEFAULT 'management',

    status TINYINT(1) NOT NULL DEFAULT 1,

    invitation_sent_at TIMESTAMP NULL DEFAULT NULL,
    invitation_accepted_at TIMESTAMP NULL DEFAULT NULL,

    last_login_at TIMESTAMP NULL DEFAULT NULL,

    created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    deleted_at TIMESTAMP NULL DEFAULT NULL
);