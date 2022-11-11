CREATE TABLE plant (
plant_id INT PRIMARY KEY AUTO_INCREMENT,
plant_name VARCHAR(80),
zone INT,
season VARCHAR(40)
);

CREATE TABLE seeds (
seeds_id INT PRIMARY KEY AUTO_INCREMENT,
expiration_date DATE,
quantity INT,
reorder BOOL,
plant_id INT,
FOREIGN KEY (plant_id) REFERENCES plant(plant_id) 
);

CREATE TABLE garden_bed (
space_number INT PRIMARY KEY AUTO_INCREMENT,
date_planted DATE,
doing_well BOOL,
plant_id INT,
FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
);

#INNER JOIN
SELECT * 
FROM seeds 
	INNER JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id;

#LEFT OUTER JOIN
SELECT * 
FROM seeds 
	LEFT JOIN garden_bed on seeds.plant_id = garden_bed.plant_id;

#RIGHT OUTER JOIN
SELECT * 
FROM seeds 
	RIGHT JOIN garden_bed on seeds.plant_id = garden_bed.plant_id; 

#FULL OUTER JOIN (simulated)
SELECT * FROM seeds LEFT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id
UNION 
SELECT * from seeds RIGHT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id;


