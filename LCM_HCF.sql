//PL/SQL program to find HCF and LCM of 3 numbers.
Declare
  a number;
  b number;
  c number;
  d number;
  gcd number;
  lcm number;
  i number;
  g integer;
  j integer;
  //Declaring the procedure to find the hcf of 3 numbers.
  Procedure find_hcf( x in number, y in number, z in number, gcd out number) is
   Begin
    if x>y and x>z then
         gcd:=x;
      
    elsif y>z and y>x then
         gcd:=y;
    else
         gcd:=z;
    end if;
    i:=gcd;
    loop
     if mod(x,i)=0 and mod(y,i)=0 and mod(z,i)=0 then
        exit;
     else
        i:=i-1;
     end if;
    exit when i=0;     
    end loop;
    gcd:=i;
    end;
  //Declaring the procedure to find the lcm of 3 numbers.
  Procedure find_lcm( x in number, y in number , z in number , lcm out number) is 
    Begin
     if z>y then
      g:=z;
     else
      g:=y;
     end if;
     i:=g;
    loop
     if mod(z,i)=0 and mod(y,i)=0  then
       exit;
     else
       i:=i-1;
     end if;
     exit when i=0;     
     end loop;
     g:=i;
     j:=z*y/g;
     if j>x then
       g:=j;
     else
       g:=x;
     end if;
     i:=g;
     loop
       if mod(j,i)=0 and mod(x,i)=0  then
          exit;
       else
         i:=i-1;
       end if;
     exit when i=0;     
     end loop;
     g:=i;
     lcm:=j*x/g; 
  end;
Begin
 a:=&a;
 b:=&b;
 c:=&c;
 find_hcf(a,b,c,gcd);
 find_lcm(a,b,c,lcm);
 dbms_output.put_line('The GCD of '||a||', '||b||', '||c||' is '||gcd);
 dbms_output.put_line('The LCM of '||a||', '||b||', '||c||'is '||lcm);
end;