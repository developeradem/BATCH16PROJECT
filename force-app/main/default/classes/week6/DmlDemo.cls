public  class DmlDemo {
    public static void dmlInsert1() {
        //create new account report here
        //cretae new instance first
        account acc = new account();

        //set the field name
        acc.Name='soft innovas';

        //insert statement
        insert acc;//will create record in org
        System.debug(acc);

    }


    //create new record for department
    public static void dmlInsert2() {
        department__c d = new department__c();

        //set fields
        d.Name__c = 'human resource';
        d.Short_code__c = 'hr';

        insert d;
        
    }

    public static void dmlUpdate1() {
        account acc = new account();
        acc.name = 'Softinnovas';
        system.debug('before insert DML: ' + acc);
        insert acc;
        system.debug('after dml : ' + acc);

        //ID is mandatory if we want to update record
        acc.name = 'Softinnovas Inc.';
        update acc;//update statement.
    }

       //update existing record from the org.
       public static void dmlUpdate2() {
        //soql
        account acc = [select id, name from account order by CreatedDate desc limit 1];

        //update
        acc.Name = 'Salesforce Inc.';

        update acc;
    }
    ///update an emloye from usa to canada
    public static void dmlUpdate3() {
        Employee__c emp = [select id, country__c, first_name__c from employee__c where country__c = 'USA' limit 1];

        emp.country__c = 'canada';
        emp.first_name__c = 'emily new';
        update emp;
        

        
    }

    //to establish relation between two records, we MUST provide parent record ID in child field name.
    public static void dmlInsert4() {
        //req:create contact record for latest created account record

        account acc = [select id, name from account order by createddate desc limit 1];

        string accountname = acc.name;
        id accountid = acc.id;

        //create contact
        contact c = new contact();
        c.LastName = 'Biden';
        c.accountid = accountid;
        insert c;
    }
}
