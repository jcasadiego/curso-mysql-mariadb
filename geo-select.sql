USE metro_cdmx;

-- Calculando en metros con datos quemados
SELECT
ST_Distance_Sphere(
    POINT(-99.14433718, 19.40702104),
    POINT(-99.173702, 19.49039233)
) AS distance;

-- Calculando en kilometros con datos quemados
SELECT
ST_Distance_Sphere(
    POINT(-99.14433718, 19.40702104),
    POINT(-99.173702, 19.49039233)
) / 1000 AS distance;

-- Calculando en kilometros con consultas anidadas
SELECT
ST_Distance_Sphere(
    (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Balderas"
    ),
    (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Pino Suarez"
    )
) / 1000 AS distance;