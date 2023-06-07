MethodsDemo2 m3 = new MethodsDemo2();
boolean b1=m3.nameContainsA('vicky');
system.debug('vicky contains a? '+b1);
system.debug('christina contains a? '+m3.nameContainsA('a'));

boolean b2=m3.nameContainsA('barcelona');
system.debug('barcelona contains a? '+b2);




MethodsDemo2 m2 = new MethodsDemo2();
string returnMsg = m2.returnMessage('Jenny');
system.debug(returnMsg);


system.debug(m2.returnMessage('forrest'));

string returnMsg2 = m2.returnMessage2('Jenny');
system.debug(returnMsg2.length());


MethodsDemo2 m3 = new MethodsDemo2();
integer i = m3.returnMessage2('April');
system.debug('i is ' + i);