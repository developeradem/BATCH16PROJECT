
string m1 = MapDemo2.retrieveMonth(2);
system.debug(m1);
string m2 = MapDemo2.retrieveMonth(11);
system.debug(m2);
string m15 = MapDemo2.retrieveMonth(20);
system.debug(m15);




MapDemo2.mapItemPrices();

Map<string, integer> map2 = new map<string, integer>();
map2.put('one', 101);
map2.put('two', 202);
map2.put('three', 303);

//get all keys from map -> we use KEYSET method
set<string> allKeys = map2.keySet();
//{one, three, two}

for(string eachKey: allKeys){
    system.debug('each key is ' + eachKey);
    //one
    //two
    //three


    ///how we can get a value?
    integer eachValue =map2.get(eachKey);
    system.debug('each value is '+eachValue);
}