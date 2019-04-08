DECLARE
	a varchar(200);
	b varchar(200);
	i number;
	l number;
BEGIN
	a:=&a;
	l:=length(a);
	for i in reverse 1..l
	loop
	    b:=b || substr(a,i,1);
	end loop;
        dbms_output.put_line('Reversed string is: ');
	dbms_output.put_line(b);
END;
