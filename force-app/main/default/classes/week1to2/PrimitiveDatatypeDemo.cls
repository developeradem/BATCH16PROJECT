public class PrimitiveDatatypeDemo {
   
   //return type --> void
   //method name --> print1
   public void print1(){
       string batchName = 'Batch 16';
       integer totalCandidates = 45; //will NOT work
       boolean isAdminCompleted = true;

       string batchDescription = batchName + ' has ' + totalCandidates + ' candidates. Admin completed: ' + isAdminCompleted;
       system.debug(batchDescription);
   }

   public void print2(){
    Decimal d1 = 8885252.125256;
    system.debug('decimal d1==> '+d1);

    long l1 =12594562565L;
    system.debug('long l1==> '+l1);

    id accId='0018d00000VxZKKAA3';//must be valid id
    system.debug('acc id is '+accId);
    double dd1=884.55;
    system.debug('double--> '+dd1);

    object obj1 ='anything can be ';
    object obj2 =99;
    object obj3 =2535.2565;
    object obj4 =l1;
    object obj5 =accId;
    object obj6 =dd1;
    system.debug(obj1);
    system.debug(obj2);
    system.debug(obj3);
    system.debug(obj4);
    system.debug(obj5);
    system.debug(obj6);


   }
}