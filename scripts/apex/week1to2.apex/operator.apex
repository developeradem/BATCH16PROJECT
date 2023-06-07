//addition assignmnet

integer i = 9;
integer b = 8;
i += 5; // i = i + 5; => i = 9+5
system.debug(i);
// i += b; // i = i + b;
// system.debug(i); //14+8
// system.debug(b); //8
// b += i;
// system.debug(b); //

integer x = 75;
integer y = 80;
x -= y; //x = x - y; x = 75 -80 => -5
system.debug(x); //-5

x++;//x = x+1 ==> -4
x++;//-3
x++;//-2

y++;//81

y--; // y = y-1; 80

y = 1;
y--;
system.debug(y);//

string s = 'something somthing';
system.debug( !(s.contains('a') && s.contains('e')) );
            //( ! (true && false))
            // !false 
            //=> true

boolean b = (!(s.contains('a') && s.contains('e')));

system.debug( b || s.equals('something') );
system.debug( (!b || s.equals('something')) &&  s.equals('something somthing'));

//&& || > <
    //we need two operands to use these
    //binary

//! ==> unary