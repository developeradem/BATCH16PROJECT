public  class setDemo2 {
    public static void setToUpperCase() {

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


        ////convert each element to uppercase and add in new set
        set<string> citiesUp = new set<string>();
        //for each loop on cities set
        for (string eachCity : cities) {
            string temp=eachCity.toUpperCase();
            citiesUp.add(temp);//same thing first way
            citiesUp.add(eachCity.toUpperCase());//ayni sey other way
            
        }
        system.debug('uppercase cities ==> '+citiesUp);




    }
}