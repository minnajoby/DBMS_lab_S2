select E.Name from employees E join employees m on E.manager_id=m.ID where 
m.Name=’Ram’;
