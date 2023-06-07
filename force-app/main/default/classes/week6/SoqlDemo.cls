public class SoqlDemo {
    public static void accountSOQL1() {
        list<account> listAcc = [select id, name, phone from account];
        system.debug('listAcc: ' + listAcc);

        list<contact> listCon = [select id, name, phone from contact];
        system.debug('listCon: ' + listCon);
    }

    public static void accountSOQLOneRecord(){
        account acc= [select id, name, phone, createddate from account order by createddate desc limit 1 ];
        System.debug('acc recordv '+acc);

        string accountName =acc.Name;//notka koyu alirsak istedigimiz value yu cekeriz
        System.debug('acc name is '+acc.Name);
        System.debug('phone is '+acc.Phone);
        System.debug('id is '+acc.Id);
    }
    public static void accountSOQL2(){
        list<account> listAcc = [select id, name, accountnumber, phone from account order by createddate desc];
        for (account eachAcc : listAcc) {
            System.debug('each account: '+eachAcc);

            System.debug('acc name is  '+eachAcc.Name);
            System.debug('acc phone is '+eachAcc.Phone);
            System.debug('acc number is '+eachAcc.accountNumber);
            
        }

    }
}