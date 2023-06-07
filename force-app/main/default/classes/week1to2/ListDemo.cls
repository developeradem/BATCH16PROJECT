/*public  class ListDemo {
  public static void candidatelist(){
    List<String> listC=new List<string>();
    system.debug('before: '+listC);


    //add values
    listC.add('marc');
    listC.add('steve');
    listC.add('ali');
    listC.add('marc');
    system.debug('after : '+listC);
    //listC.add(77);will not work its integer 

  }

//we can take index value.put index number in i and get.
  public static void candidateList(Integer i){
    List<String> listC=new List<string>();
    system.debug('before: '+listC);


    listC.add('marc');
    listC.add('steve');
    listC.add('ali');
    listC.add('marc');
    system.debug('after : '+listC);

    string returnValue = '';
        integer size = listC.size(); //5, max index => 4
        if(i >= 0 && i < size){
            returnValue = listC.get(i);
        } else {
            returnValue = 'No such value';
        }

        return returnValue;


  }


  public static void randomIntList(){
    List<integer> l1=new List<integer>();
    system.debug('before: '+l1);

    l1.add(77);//index 0
    l1.add(10);//index 1
    l1.add(20);
    l1.add(30);
    system.debug('integer '+l1);

    //how to get value from index
    //use  use.get(index) method

    integer i3=l1.get(3);///value of index number 3 is 20
    //OR
    integer i33=l1[3];
    system.debug('i3 is '+i3);
    system.debug('i33 is '+i33);

    integer size =l1.size(); //size methods to find number of elements
    system.debug('Size of l1 is '+size);
  }
}*/




public class ListDemo {
   public static void candidateList(){
        List<string> listC = new list<string>();
        system.debug('before : ' + listC);

        //add values or elements or items in list
        listC.add('Marc');  //0
        listC.add('Steve'); //1
        listC.add('Kunal'); //2
        listC.add('Marc');  //3
        listC.add('Marc');  //4
        system.debug('after : ' + listC);
   }

   //requirement: pass index number, it will return value at that index.
   public static string candidateList(integer i) {
        List<string> listC = new list<string>();
        system.debug('before : ' + listC);

        //add values or elements or items in list
        listC.add('Marc');  //0
        listC.add('Steve'); //1
        listC.add('Kunal'); //2
        listC.add('Marc');  //3
        listC.add('Marc');  //4
        system.debug('after : ' + listC);

        string returnValue = '';
        integer size = listC.size(); //5, max index => 4
        if(i >= 0 && i < size){
            returnValue = listC.get(i);
        } else {
            returnValue = 'No such value';
        }
        return returnValue;
   }

   public static void randomIntList(){
        list<integer> l1 = new list<integer>();
        l1.add(77);//0
        l1.add(15);//1
        l1.add(21);//2
        l1.add(99);//3
        l1.add(77);//4
        l1.add(77);//5
        system.debug('list of integer ' + l1);

        //how to get a value from an index
            //A. use .get(index) method
        integer i3 = l1.get(3);//value? 99
        //OR
        integer i33 = l1[3]; //value? 99
        system.debug('i3 is ' + i3);
        system.debug('i33 is ' + i33);


        integer size = l1.size();//size methods returns us number of elements in a list.s
        system.debug('SIZE of l1 is ' + size);//count like humans
   }
}