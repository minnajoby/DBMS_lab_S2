drop procedure if exists print_numbers; 
delimiter $$ 
create procedure print_numbers(in a int,in b int) 
begin 
        declare counter int; 
        declare result varchar(100); 
        set counter=least(a,b); 
        set result=' '; 
        label: loop 
                set counter=counter+1; 
                if counter >= greatest (a,b) then 
                        leave label; 
                end if; 
                set result= concat(result,counter,' '); 
        end loop; 
        select result as NumberSeries; 
end $$ 
delimiter;
