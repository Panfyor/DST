COPY client(firstName,lastName,gender,birthday) 
FROM '../../d/easycar-clients.csv' DELIMITER ';' CSV HEADER;
