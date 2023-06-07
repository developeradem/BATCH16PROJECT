public class ListDemo2 {
    public static boolean candidateList(string str){
        List<string> listC = new list<string>();
        system.debug('before : ' + listC);

        //add values or elements or items in list
        listC.add('Marc');  //0
        listC.add('Steve'); //1
        listC.add('Kunal'); //2
        listC.add('Marc');  //3
        listC.add('Marc');  //4
        system.debug('after : ' + listC);
        //contains is case sensitive for string
        boolean check = listC.contains(str);
        return check;
   }

   public static void friendList(){
    List<string>fl =new List<string>{'suching', 'ali' ,'ray','Arpan','Erik','Roy'};//here we add new valuesby {  }
    system.debug('before ; '+fl);

    fl.sort();//here we are making line in the list up to down listing from big case tu smaller case a to z
    system.debug('after sorting='+fl);
   }

   public static void iterateList1(){

   list<integer> l1 = new list<integer>();
   l1.add(77);//0
   l1.add(15);//1
   l1.add(21);//2
   l1.add(99);//3
   l1.add(77);//4
   l1.add(77);//5
   //we will get element by one by list

   for(integer eachInteger:l1){
    system.debug(eachInteger);
   }
   }



   public static void iterateList2(){


    list<integer> l1 = new list<integer>();
    l1.add(77);//0
    l1.add(15);//1
    l1.add(21);//2
    l1.add(99);//3
    l1.add(77);//4
    l1.add(77);//5
    //we will get element by one by list
    //print following 
    //5x77=385
    //5x15=75
    //5x21=105
 
    for(integer eachInteger:l1){
     system.debug('5x '+eachInteger+'='+  (eachInteger*5));
    }
    }


    //add all the elements in l1 list and return the sum
    //rakamlari toplayarak gidiyor listeliyor altalta
    public static integer add(List<integer>l1){
        integer sum=0;
        for (integer num : l1) {
            system.debug('sum inside for is '+sum);
            sum +=num;//sum=sum+num
            //sum=0+8=8
            //sum=8+9=17
            //sum=17+21=35
            
        }

        return sum;

    }



    public static void iterateListString1(){

        List<string> listC = new list<string>();
        system.debug('before : ' + listC);

        //add values or elements or items in list
        listC.add('Marc');  //0
        listC.add('Steve'); //1
        listC.add('Kunal'); //2
        listC.add('Marc');  //3
        listC.add('Marc');
        listC.add('vitap');

        //print element and by length uzunluk
        //marc=4
        //steve=5
        for (string eachStr:listC){
            integer len=eachStr.length();
            system.debug(eachStr+'- '+len);
        }

    }

    
 


    public static string add1(list<string> ls){
        string finalString = '';
        for (string eachStr : ls) {
            system.debug('final str inside for ==> ' + finalString);
            finalString = finalString + eachStr + ' || ';
        }
        //finalString = finalString.removeEnd(' || ');
        return finalString;
   }





   public static void iterateListString99(){
    list<string> list9 = new list<string>{'class', 'object', 'methods', 'constructor', 'getter setter', 'list'};
    
    //example:
        //class
        //class - 5
        //object
        //object - 6
    list<string> list99 = new list<string>();   
    //we are iterating list9.
    //inside for each loop of list9, we cannot modify(add or remove elements from) list9. 
    //solution?
        //create another empty list and add elements in the new list
    for (string eachTopic : list9) {
        string temp = eachTopic + ' - ' + eachTopic.length();
        list99.add(eachTopic);
        list99.add(temp);
    }
    system.debug(list99);
   }


}