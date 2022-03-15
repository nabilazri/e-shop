CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `image_url` VARCHAR(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `user_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) DEFAULT NULL,
  `last_name` VARCHAR(255) DEFAULT NULL,
  `role` VARCHAR(50) DEFAULT NULL,
  `enabled` BOOLEAN DEFAULT FALSE,
  `password` VARCHAR(50) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `number` VARCHAR(13) DEFAULT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE product(
  `id` int NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(20) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `brand` VARCHAR(50) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(10,2) DEFAULT NULL,
  `quantity` INT DEFAULT NULL,
  `is_active` BOOLEAN DEFAULT FALSE, 
  `category_id` INT DEFAULT NULL,
  `supplier_id` INT DEFAULT NULL,
  `purshases` INT DEFAULT 0,
  `views` INT DEFAULT 0,
  PRIMARY KEY (`id`)
  FOREIGN KEY (`category_id`) REFERENCES category (`id`),
  FOREIGN KEY (`supplier_id`) REFERENCES user_detail (`id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
