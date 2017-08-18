TRUNCATE TABLE apartments;
TRUNCATE TABLE office;
TRUNCATE TABLE storefront;

ALTER SEQUENCE apartments_id_seq RESTART WITH 1;

INSERT INTO apartments(apt_number, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) 
     VALUES (2, 2, '123 melody st', 'Mike Phelps', 'N', '1200 sf', '$900.00');
INSERT INTO apartments(id, apt_number, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price)
     VALUES (2, 2, '555 kennedy blvd', 'Nancy Smith', 'Y', '1400 sf', '$1100.00');

INSERT INTO office(office_number, num_of_floors, square_footage, num_of_cubicles, bathrooms, address, company_name, occupied_status, price) 
     VALUES (521, 2, '700sf', 4, 2, '555 kennedy blvd', 'magestic co', 'N', '$1115.00');
INSERT INTO office(office_number, num_of_floors, square_footage, num_of_cubicles, bathrooms, address, company_name, occupied_status, price) 
     VALUES (528, 2, '850sf', 3, 1, '620 Horse shoe st', 'carvel co', 'Y', '$1200.00');

INSERT INTO storefront(address, occupied_status, price, istherekitchen, square_footage, owner, outdoor_seating) VALUES ('elmo st', 'Y', '$2000', 'Y', '1600sf', 'Adam Bray', 'N');
INSERT INTO storefront(address, occupied_status, price, istherekitchen, square_footage, owner, outdoor_seating) VALUES ('elmo st', 'Y', '$2000', 'Y', '1700sf', 'Eva Berger', 'Y');