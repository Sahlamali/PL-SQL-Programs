DECLARE
        a number;
	i number;
	f number;
BEGIN
	a:=&a;
	if a=2 then
	   dbms_output.put_line('is prime');
	elsif a>2 then
	    for i in 2..a/2
            loop
		if (mod(a,i)=0) then
		   f:=1;
		   exit;
		else
		    f:=0; 
		end if;
            end loop;
            if f=1 then
               dbms_output.put_line('not prime');
	    else
	       dbms_output.put_line('is prime');
	    end if;
        end if;
END;
