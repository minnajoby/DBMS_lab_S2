drop procedure if exists sum_series; 
delimiter $$ 
create procedure sum_series(in a int,out sum int) 
begin 
        declare total int default 0; 
        declare counter int default 1; 
        while (counter <= a) DO 
                set total= total+counter; 
                set counter=counter+1; 
        end while; 
        set sum=total; 
end $$ 
delimiter;
