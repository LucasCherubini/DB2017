CREATE TABLE rental_audit (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id SMALLINT UNSIGNED NOT NULL,
inventory_id MEDIUMINT UNSIGNED NOT NULL,
changedat DATETIME DEFAULT NULL,
action VARCHAR(50) DEFAULT NULL
);