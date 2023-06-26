USE metro_cdmx;

-- Creación de la tabla drivers
CREATE TABLE `drivers` (

    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

    `name` VARCHAR(10) NOT NULL,
    `status` BOOLEAN NOT NULL DEFAULT false,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;