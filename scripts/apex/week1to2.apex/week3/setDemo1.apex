list<integer> l1 = new list<integer>{10,15,77,99,10,77,55};
set<integer> s =citySet.setFromList(l1);
system.debug('s is '+s);

citySet.setFromList();
citySet.randomIntegerSet();
citySet.citySet1();




set<integer> s33 = new set<integer>(); //empty
system.debug(s33.isEmpty());//will this work?

s33.add(5);//will this work? NO.


list<string> l33;
l33.add('hello');

string str;//null
str.toUpperCase();//we can't use any method or any operation on NULL

integer i;
system.debug(i+5);