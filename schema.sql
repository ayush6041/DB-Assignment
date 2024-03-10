CREATE TABLE `product`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `description` TEXT NOT NULL,
    `SKU` VARCHAR(255) NOT NULL,
    `category_id` INT NOT NULL,
    `inventory_id` INT NOT NULL,
    `price` DECIMAL(10, 2) NOT NULL,
    `discount_id` INT NOT NULL,
    `created_at` INT NOT NULL,
    `modified_at` INT NOT NULL,
    `deleted_at` INT NOT NULL
);
CREATE TABLE `product_category`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `description` TEXT NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `modified_at` TIMESTAMP NOT NULL
);
ALTER TABLE
    `product_category` ADD INDEX `product_category_id_index`(`id`);
CREATE TABLE `discount`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `description` TEXT NOT NULL,
    `discount_percent` DECIMAL(5, 2) NOT NULL,
    `active` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `modified_at` TIMESTAMP NOT NULL,
    `deleted_at` TIMESTAMP NOT NULL
);
CREATE TABLE `product_inventory`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `quantity` INT NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `modified_at` TIMESTAMP NOT NULL,
    `deleted_at` TIMESTAMP NOT NULL
);
ALTER TABLE
    `product` ADD CONSTRAINT `product_discount_id_foreign` FOREIGN KEY(`discount_id`) REFERENCES `discount`(`id`);
ALTER TABLE
    `product` ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY(`category_id`) REFERENCES `product_category`(`id`);
ALTER TABLE
    `product` ADD CONSTRAINT `product_inventory_id_foreign` FOREIGN KEY(`inventory_id`) REFERENCES `product_inventory`(`id`);