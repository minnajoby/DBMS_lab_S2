Drop procedure if exists FindGreatestNumber; 
delimiter $$ 
create procedure FindGreatestNumber( 
        in num1 int, 
        in num2 int, 
        in num3 int, 
        out greatest int 
) 
begin 
        if num1 >= num2 and num1 >= num3 then 
                set greatest = num1; 
        elseif num2 >= num1 and num2 >= num3 then 
                set greatest = num2; 
        else 
                set greatest = num3; 
        end if; 
end $$ 
delimiter ; 
