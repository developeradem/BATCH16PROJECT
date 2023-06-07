public class citySet {
    public static void citySet1() {
        //set of string
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Tokyo');
        cities.add('Tokyo');
        cities.add('Tokyo');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('LISBON');
        //it prints in alphabetic order.
        system.debug('cities set ' + cities);
    }


    public static void randomIntegerSet(){
        set<integer>intSet = new set<integer>();

        intSet.add(15);
        intSet.add(21);
        intSet.add(10);
        intSet.add(15);
        intSet.add(5);
        intSet.add(10);
        system.debug('int set==> '+intSet);
    }


    public static void setFromList(){
        //we will create set from list

        list<integer> l1 = new list<integer>{10,15,77,99,10,77,55};
         system.debug('l1 ==> '+l1);

         //create new set and add all elements from another list or set
         set<integer> s1 = new set<integer>();
         s1.addAll(l1);
         system.debug('s1 ==> '+s1);
    }

    public static set<integer> setFromList(list<integer> l1){
        system.debug( 'l1 from parameter ==> '+l1);
        set<integer> s1 = new set<integer>();
        s1.addAll(l1);
        return s1;
    }
}