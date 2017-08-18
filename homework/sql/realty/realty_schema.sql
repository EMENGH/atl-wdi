create table office (
id SERIAL UNIQUE PRIMARY KEY,
 office_number INT,
 num_of_floors INT,
 square_footage VARCHAR,
 num_of_cubicles INT,
 bathrooms INT,
 address VARCHAR NOT NULL,
 company_name VARCHAR,
 occupied_status BOOLEAN,
 price VARCHAR);



 create table Apartments (
 id SERIAL UNIQUE PRIMARY KEY,
 apt_number VARCHAR NOT NULL,
 bedrooms INT,
 bathrooms INT,
 address VARCHAR NOT NULL,
 tenant VARCHAR,
 occupied_status BOOLEAN,
 square_footage VARCHAR,
 price VARCHAR);



 create table storefront (
 id SERIAL UNIQUE PRIMARY KEY,
 address VARCHAR,
 occupied_status BOOLEAN,
 price VARCHAR,
 istherekitchen BOOLEAN,
 square_footage VARCHAR,
 owner VARCHAR,
 outdoor_seating BOOLEAN);