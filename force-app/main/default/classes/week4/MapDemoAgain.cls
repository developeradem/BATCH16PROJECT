public  class MapDemoAgain {
    public static void printMap1(){
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex'); //1011 is key and 'alex 'is value and key can not be duplicate but value can be.
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

        system.debug('student map => ' + map1);

        integer rollNo=1011;
        string s11=map1.get(rollNo);
        system.debug(rollNo + 'student name is '+s11);


        integer rollNo2=1066;
        //check if rollNo2 is present or print not present
        //cantain key is true or false
        if(map1.containsKey(rollNo2)) {
            system.debug(rollNo2 + 'student name is '+map1.get(rollNo2));

        }else {
            system.debug('not present in map');
        }
        

    }


    public static void printMap2(){
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex'); //1011 is key and 'alex 'is value and key can not be duplicate but value can be.
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');


        //how to get all key?
        //keyset() method   set<key-datatype>
        set<integer> allKeys = map1.keySet();
        system.debug('all roll numbers ==> '+allKeys);
        system.debug('new numbers ==> '+allKeys.size());


        //we want to get all student names
        //values() will return list of value data type
        //string will be string integer will return integer
        list<string> allValues = map1.values();
        system.debug( 'student names are '+allValues);
    }


    public static void printMap3(){
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex'); //1011 is key and 'alex 'is value and key can not be duplicate but value can be.
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

        //puttAll

        map<integer, string> map2 = new map<integer, string>();
        map2.putAll(map1);
        system.debug(map2);


    }

    public static void printMap4(){
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex'); //1011 is key and 'alex 'is value and key can not be duplicate but value can be.
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

        //print for every key-value pair
        //rollNo is 1011 srudent name is amar 


        //for each loop.there is no for each loop for map direclty
        //first get all set of keys
        set<integer>allRollNo =map1.keySet();
        //now we get 1011 1022 1033  

        for (integer rollNo : allRollNo) {

            string s11=map1.get(rollNo);
            system.debug('roll no is '+ rollNo +', student name is '+s11);
        }

    }



    public static void printMap5(){
        map<string, list<string>> map99 = new map<string, list<string>>();
        list<string> l1 = new list<string>{'alex', 'benjamin'};
        list<string> l2 = new list<string>{'john', 'jane'};
        list<string> l3 = new list<string>{'david', 'peter'};

        map99.put('IT', l1);
        map99.put('sales', l2);
        map99.put('service', l3);

        system.debug(map99);

        set<string> allCandidates = map99.keySet();
        list<list<string>> allCandidatesValues = map99.values();
        for (string eachD : allCandidates) {
            list<string> eachCandidates = map99.get(eachD);
            System.debug( 'team name = '+eachD);
            System.debug( 'team members = '+eachCandidates);

            for (string eachM : eachCandidates) {
                System.debug(eachM+ ' is in '+eachD);
                
            }

            
        }

    }
}