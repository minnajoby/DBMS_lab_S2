SELECT d.department_name, l.street_address, l.postal_code, c.country_name, 
r.region_name FROM departments d JOIN locations l ON d.location_id = l.location_id JOIN 
countries c ON l.country_id = c.country_id JOIN regions r ON c.region_id = r.region_id;
